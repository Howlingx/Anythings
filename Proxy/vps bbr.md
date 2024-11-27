修改 BBR 配置可进行以下操作：

1.打开编辑配置文件
````
sudo nano /etc/sysctl.conf
````

````
# 启用 BBR 拥塞控制
net.ipv4.tcp_congestion_control = bbr

# 设置最大和默认的接收与发送缓冲区
net.core.rmem_default = 16777216
net.core.rmem_max = 33554432
net.core.wmem_default = 16777216
net.core.wmem_max = 33554432

# 文件描述符数和连接数
fs.file-max = 2097152
net.netfilter.nf_conntrack_max = 25000000

# 启用 TCP 快速打开
net.ipv4.tcp_fastopen = 3

# 设置本地端口范围
net.ipv4.ip_local_port_range = 1024 65535

# 启用 IPv6 转发和 IP 转发
net.ipv6.conf.default.forwarding = 1
net.ipv4.ip_forward = 1

# 设置 ARP 公告
net.ipv4.conf.default.arp_announce = 2
net.ipv4.conf.lo.arp_announce = 2

# 设置反向路径过滤
net.ipv4.conf.all.rp_filter = 0

# 设置 TCP 连接超时
net.ipv4.tcp_synack_retries = 3
net.ipv4.tcp_syn_retries = 3
net.ipv4.tcp_fin_timeout = 10
net.netfilter.nf_conntrack_tcp_timeout_established = 180
net.netfilter.nf_conntrack_tcp_timeout_fin_wait = 30

# 设置 TCP keepalive 时间
net.ipv4.tcp_keepalive_time = 10

# 调整 TCP 的最大 SYN 队列长度
net.ipv4.tcp_max_syn_backlog = 16384

# 启用 TCP SACK（Selective Acknowledgment）
net.ipv4.tcp_sack = 1

# 设置 TCP 窗口大小
net.ipv4.tcp_rmem = 8192 262144 536870912
net.ipv4.tcp_wmem = 4096 16384 536870912

# 启用 TCP 窗口缩放和低延迟
net.ipv4.tcp_window_scaling = 1
net.ipv4.tcp_low_latency = 1

# 启用 MTU 探测
net.ipv4.tcp_mtu_probing = 1

# 启用 TCP 连接重用
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_max_tw_buckets = 8192

# 设置 TCP 时间戳为关闭，减少额外负载
net.ipv4.tcp_timestamps = 0

# 设置连接数回收
net.ipv4.tcp_synack_retries = 3
net.ipv4.tcp_fastopen = 3
````

2.使配置生效
````
sudo sysctl -p
````

3.验证 BBR 是否已启用
````
sysctl net.ipv4.tcp_congestion_control
````

-----------------------------------------------------------------

一键bbr
````
cat > /etc/sysctl.conf << EOF
fs.file-max = 6815744
net.ipv4.tcp_no_metrics_save=1
net.ipv4.tcp_ecn=0
net.ipv4.tcp_frto=0
net.ipv4.tcp_mtu_probing=0
net.ipv4.tcp_rfc1337=0
net.ipv4.tcp_sack=1
net.ipv4.tcp_fack=1
net.ipv4.tcp_window_scaling=1
net.ipv4.tcp_adv_win_scale=1
net.ipv4.tcp_moderate_rcvbuf=1
net.core.rmem_max=33554432
net.core.wmem_max=33554432
net.ipv4.tcp_rmem=4096 87380 33554432
net.ipv4.tcp_wmem=4096 16384 33554432
net.ipv4.udp_rmem_min=8192
net.ipv4.udp_wmem_min=8192
net.ipv4.ip_forward=1
net.ipv4.conf.all.route_localnet=1
net.ipv4.conf.all.forwarding=1
net.ipv4.conf.default.forwarding=1
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
net.ipv6.conf.all.forwarding=1
net.ipv6.conf.default.forwarding=1
EOF
sysctl -p && sysctl --system
````

--------------------------------------------------------------

香港 bbr 配置
````
net.core.default_qdisc = fq
net.ipv4.tcp_congestion_control = bbr
net.ipv4.tcp_rmem = 4096 87380 6291456
net.ipv4.tcp_wmem = 4096 16384 4194304
net.core.somaxconn = 1024
net.core.netdev_max_backlog = 5000
net.ipv4.tcp_max_syn_backlog = 4096
net.ipv4.tcp_keepalive_time = 600
net.ipv4.tcp_keepalive_intvl = 15
net.ipv4.tcp_keepalive_probes = 5
net.ipv4.tcp_tw_reuse = 1
````

-----------------------------------------------------------------

新加坡 bbr 配置
````
net.core.default_qdisc = fq
net.ipv4.tcp_congestion_control = bbr
net.ipv4.tcp_rmem = 4096 87380 6291456
net.ipv4.tcp_wmem = 4096 16384 4194304
net.ipv4.tcp_keepalive_time = 600
net.ipv4.tcp_keepalive_intvl = 15
net.ipv4.tcp_keepalive_probes = 5
net.core.somaxconn = 1024
net.core.netdev_max_backlog = 5000
net.ipv4.tcp_max_syn_backlog = 4096
````

------------------------------------------------------------------

俄罗斯 bbr 配置
````
net.core.default_qdisc = fq
net.ipv4.tcp_congestion_control = bbr
net.ipv4.tcp_keepalive_time = 1200
net.ipv4.tcp_keepalive_intvl = 15
net.ipv4.tcp_keepalive_probes = 5
net.ipv4.tcp_fin_timeout = 15
net.ipv4.tcp_tw_reuse = 1
net.core.somaxconn = 1024
net.core.netdev_max_backlog = 5000
net.ipv4.tcp_max_syn_backlog = 4096
net.ipv4.tcp_window_scaling = 1
net.ipv4.tcp_rmem = 4096 87380 6291456
net.ipv4.tcp_wmem = 4096 16384 4194304
````

