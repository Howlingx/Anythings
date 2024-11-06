要在 VPS 上安装 ufw（Uncomplicated Firewall），可以使用以下命令：

1.更新包列表：
````
sudo apt update
````

2.安装 ufw：
````
sudo apt install ufw
````

3.启用 ufw：
````
sudo ufw enable
````

--------------------------------------------------------------------

ufw常用命令：

1.只允许 TCP 端口：
````
sudo ufw allow 111/tcp
````

2.只允许 UDP 端口：
````
sudo ufw allow 111/udp
````

3.允许 TCP 端口 和 UDP 端口：
````
sudo ufw allow 111
````

4.查看 ufw 状态：
````
sudo ufw status
````
