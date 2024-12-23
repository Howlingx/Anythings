修改 BBR 配置可进行以下操作：

1.打开编辑配置文件
````
sudo nano /etc/sysctl.conf
````

  或：
````
net.ipv4.tcp_congestion_control = bbr
net.core.default_qdisc = fq
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
net.ipv4.tcp_congestion_control = bbr
net.core.default_qdisc = fq
EOF
sysctl -p && sysctl --system
````
