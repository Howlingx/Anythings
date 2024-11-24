1.安装 Fail2ban:
````
sudo apt install fail2ban
````

2.配置 Fail2ban:

Fail2ban 配置文件通常位于 /etc/fail2ban 目录。默认情况下，配置文件是 /etc/fail2ban/jail.conf，但是建议创建一个本地配置文件 /etc/fail2ban/jail.local 来覆盖默认设置:
````
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
````

然后编辑 jail.local 文件：
````
sudo nano /etc/fail2ban/jail.local
````

确保以下配置存在并启用 SSH 防护：
````
[sshd]
enabled = true
port = ssh
logpath = /var/log/auth.log
maxretry = 3
bantime = 600
````

检查 logpath 设置是否正确:
````
sudo nano /var/log/auth.log
````

````
[sshd]
enabled = true
port = 2012  # 这里是你更改后的端口号
logpath = /var/log/auth.log
maxretry = 3
bantime = 600
````

3.启动和启用 Fail2ban 服务:
````
sudo systemctl start fail2ban
````

````
sudo systemctl enable fail2ban
````

--------------------------------------------------------------------------------------------------

重启 Fail2ban 服务:
````
sudo systemctl restart fail2ban
````

查看 Fail2ban 状态:
````
sudo systemctl status fail2ban
````

要查看某个特定监控服务的状态（如 SSH）：
````
sudo fail2ban-client status sshd
````
此命令将显示当前被 Fail2ban 阻止的 IP 地址列表。

如果你想手动解除某个 IP 的封禁，可以使用：
````
sudo fail2ban-client set sshd unbanip <IP_ADDRESS>
````
将 <IP_ADDRESS> 替换为实际的被封禁 IP 地址。

Fail2ban 会记录所有的活动和操作，日志文件一般位于 /var/log/fail2ban.log。可以查看日志文件来诊断问题：
````
sudo cat /var/log/fail2ban.log
````
