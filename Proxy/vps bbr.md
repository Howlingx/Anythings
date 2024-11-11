修改 BBR 配置可进行以下操作：

1.打开编辑配置文件
````
sudo nano /etc/sysctl.conf
````

````
# 使用 FQ 排队算法
net.core.default_qdisc = fq

# 使用 BBR 拥塞控制算法
net.ipv4.tcp_congestion_control = bbr

# TCP 保活时间和间隔
net.ipv4.tcp_keepalive_time = 1200
net.ipv4.tcp_keepalive_intvl = 15
net.ipv4.tcp_keepalive_probes = 5

# TCP 连接和回收相关
net.ipv4.tcp_fin_timeout = 15
net.ipv4.tcp_tw_reuse = 1

# 增加连接队列大小
net.core.somaxconn = 1024
net.core.netdev_max_backlog = 5000
net.ipv4.tcp_max_syn_backlog = 4096

# 增加 TCP 缓存窗口大小
net.ipv4.tcp_rmem = 4096 87380 6291456
net.ipv4.tcp_wmem = 4096 16384 4194304

# 启用 TCP 窗口缩放
net.ipv4.tcp_window_scaling = 1
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

