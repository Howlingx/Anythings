1.开启 IP 转发（必做）
````
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sysctl -p
````

2.编辑配置文件（清空原内容）：
````
nano /etc/nftables.conf
````

3.如果仅有一台落地机需要转发：
````
#!/usr/sbin/nft -f
# =======================================================
# 📝 变量定义区 (务必根据实际情况修改)
# =======================================================
define DEST_IP       = 82.40.xx.xx # 1. RFCHOST 落地机公网 IP
define DEST_PORT_OUT = 33333       # 2. RFCHOST 落地机服务端口
define RELAY_PORT_IN = 10086       # 3. PO0中转端口
define RELAY_LAN_IP  = 10.100.xx.xx  # 4. PO0内网 IP
# =======================================================
# 清空旧规则
flush ruleset

# --- 核心转发逻辑 (NAT表) ---
table ip nat {
    # 1. 入站转发 (DNAT)
    # 目的: 将访问PO0 10086端口 的流量仍给落地机
    chain prerouting {
        type nat hook prerouting priority dstnat; policy accept;
        
        # 同时转发 TCP 和 UDP 
        meta l4proto { tcp, udp } th dport $RELAY_PORT_IN dnat to $DEST_IP:$DEST_PORT_OUT
    }

    # 2. 出站伪装 (SNAT) - 专线核心
    # 目的: 将源地址改为内网 IP，强制流量走腾讯云-RFCHOST的内网路由
    chain postrouting {
        type nat hook postrouting priority srcnat; policy accept;
        
        # 仅匹配发往落地机的流量，执行 SNAT
        ip daddr $DEST_IP meta l4proto { tcp, udp } th dport $DEST_PORT_OUT snat to $RELAY_LAN_IP
    }
}

# --- 性能优化逻辑 (Filter表) ---
# 目的: 防止 MTU 不匹配导致的断流
table ip filter {
    chain forward {
        type filter hook forward priority 0; policy accept;
        
        # 调整 TCP MSS，解决某些情况下速度慢/断流”的问题
        ip daddr $DEST_IP tcp flags syn tcp option maxseg size set 1452
    }
}
````

如果有两台落地机需要转发：
````
#!/usr/sbin/nft -f
# =======================================================
# 📝 变量定义区 (务必根据实际情况修改)
# =======================================================
# --- 公共配置 ---
define RELAY_LAN_IP  = 10.100.xx.xx  # PO0内网 IP

# --- 线路 1 配置 (例如RFC HK T1) ---
define PORT_IN_1     = 10086       # 中转端口 1
define DEST_IP_1     = 172.81.xx.xx  # 1号落地机 IP
define DEST_PORT_1   = 33333       # 1号落地机端口

# --- 线路 2 配置 (例如RFC JP CO) ---
define PORT_IN_2     = 20086       # 中转端口 2
define DEST_IP_2     = 82.40.xx.xx   # 2号落地机 IP 
define DEST_PORT_2   = 44444         # 2号落地机端口
# =======================================================
# 清空旧规则
flush ruleset

# --- 核心转发逻辑 (NAT表) ---
table ip nat {
    # --- 入站转发 (DNAT) ---
    chain prerouting {
        type nat hook prerouting priority dstnat; policy accept;
        
        # [线路 1] 流量进入端口1 -> 转给落地机1
        meta l4proto { tcp, udp } th dport $PORT_IN_1 dnat to $DEST_IP_1:$DEST_PORT_1
        
        # [线路 2] 流量进入端口2 -> 转给落地机2
        meta l4proto { tcp, udp } th dport $PORT_IN_2 dnat to $DEST_IP_2:$DEST_PORT_2
    }

    # --- 出站伪装 (SNAT) ---
    chain postrouting {
        type nat hook postrouting priority srcnat; policy accept;
        
        # [线路 1] 发往落地机1的流量 -> 改源IP为内网IP (走专线)
        ip daddr $DEST_IP_1 meta l4proto { tcp, udp } th dport $DEST_PORT_1 snat to $RELAY_LAN_IP
        
        # [线路 2] 发往落地机2的流量 -> 改源IP为内网IP (走专线)
        ip daddr $DEST_IP_2 meta l4proto { tcp, udp } th dport $DEST_PORT_2 snat to $RELAY_LAN_IP
    }
}

# --- 性能优化逻辑 (Filter表) ---
# 目的: 防止 MTU 不匹配导致的断流
table ip filter {
    chain forward {
        type filter hook forward priority 0; policy accept;
        
        # 调整 TCP MSS，解决某些情况下速度慢/断流”的问题
        ip daddr { $DEST_IP_1, $DEST_IP_2 } tcp flags syn tcp option maxseg size set 1452
    }
}
````

4.检查语法 (无输出则为正常)
````
nft -c -f /etc/nftables.conf
````

5.应用配置
````
nft -f /etc/nftables.conf
````

6.设置开机自启
````
systemctl enable nftables
````
````
systemctl restart nftables
````
