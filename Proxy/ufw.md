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

ufw 常用命令：

1.要暂停 ufw，可以使用以下命令：
````
sudo ufw disable
````

2.只允许 TCP 端口：
````
sudo ufw allow 111/tcp
````

3.只允许 UDP 端口：
````
sudo ufw allow 111/udp
````

4.允许 TCP 端口 和 UDP 端口：
````
sudo ufw allow 111
````

5.查看 ufw 状态：
````
sudo ufw status
````

6.未安装 ufw ，端口检查：
````
sudo netstat -tuln
````

-------------------------------------------------------------------------

ufw 卸载

1.要卸载 ufw，可以使用以下命令：
````
sudo apt remove ufw
````

2.如果不再需要 ufw 的配置文件和日志，你还可以使用以下命令来清理残留文件：
````
sudo apt purge ufw
````

卸载完成后，可以使用 sudo apt autoremove 来清理不再需要的依赖。

