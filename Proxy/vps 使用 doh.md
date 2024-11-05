第一步：安装 cloudflared

1.首先，下载 cloudflared：
```
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
```

2.使二进制文件可执行并移至合适的目录：
```
chmod +x cloudflared-linux-amd64
sudo mv cloudflared-linux-amd64 /usr/local/bin/cloudflared
```


第二步：配置 cloudflared

1.创建 cloudflared 的配置目录：
```
sudo mkdir /etc/cloudflared
```

2.创建配置文件：
```
sudo nano /etc/cloudflared/config.yml
```

3.填入以下内容：
```
proxy-dns: true
proxy-dns-upstream:
  - https://1.1.1.1/dns-query
  - https://1.0.0.1/dns-query
```
保存并退出。


第三步：将 cloudflared 设置为 systemd 服务

1.创建 systemd 服务文件：
```
sudo nano /etc/systemd/system/cloudflared.service
```

2.填入以下内容：
```
[Unit]
Description=cloudflared DNS over HTTPS
After=syslog.target network-online.target

[Service]
Type=simple
User=root
#ExecStart=/usr/local/bin/cloudflared proxy-dns
ExecStart=/usr/local/bin/cloudflared --config /etc/cloudflared/config.yml
Restart=on-failure
RestartSec=10
KillMode=process

[Install]
WantedBy=multi-user.target
```
保存并退出。

3.启用并开始服务：
```
sudo systemctl enable cloudflared
sudo systemctl start cloudflared
```


第四步：更新系统 DNS 设置

1.编辑 resolv.conf：
```
sudo nano /etc/resolv.conf
```

2.修改或添加：
```
nameserver 127.0.0.1
```
这将使用 cloudflared 代理作为系统的 DNS 服务器。


----------------------------------------------------------------------------------------------------------------------------------



要刷新 cloudflared 配置，按照以下步骤操作：

1.编辑配置文件：
修改 /etc/cloudflared/config.yml 或你使用的其他配置文件。
```
sudo nano /etc/cloudflared/config.yml
```
应用更改后，重启 cloudflared。
```
sudo systemctl restart cloudflared
```

2.或
修改 systemd 服务文件
```
sudo nano /etc/systemd/system/cloudflared.service
```
系统重新加载服务配置以应用修改 systemd 服务文件
```
sudo systemctl daemon-reload
```

3.检查状态和日志，以确认服务是否正常运行
```
sudo systemctl status cloudflared
```



----------------------------------------------------------------------------------------------


要卸载 cloudflared，请执行以下步骤：

1.停止并禁用服务：
```
sudo systemctl stop cloudflared
sudo systemctl disable cloudflared
```

2.卸载二进制文件（假设安装在 /usr/local/bin/cloudflared）：
```
sudo rm /usr/local/bin/cloudflared
```

3.删除配置文件和相关目录（通常在 /etc/cloudflared）：
```
sudo rm -rf /etc/cloudflared
```

4.删除系统服务文件（如果存在）：
```
sudo rm /etc/systemd/system/cloudflared.service
```


-------------------------------------------------------------------------------------------------


其他dns修改：

1.编辑 /etc/resolv.conf 文件：
```
sudo nano /etc/resolv.conf
```

2.修改 systemd-resolved 的配置：
```
sudo nano /etc/systemd/resolved.conf
```
重启服务：
```
sudo systemctl restart systemd-resolved
```

3.检查状态： 使用以下命令确认配置是否生效：
```
systemd-resolve --status
```
