注意：以下仅适用于使用了 223boy 的一键 sing-box 脚本后的 caddy 配置方案

哪吒面板v0文档：
````
https://nezha-v0.mereith.dev/guide/dashboard.html
````

1.可以在 /etc/caddy/sites 存放你另外的网站配置，注意后缀要为 .conf :
````
sudo nano /etc/caddy/sites/example.com.conf
````

2.填入以下内容:
````
example.com {
         tls i@example.com
         encode gzip
         reverse_proxy localhost:8008
}
````
请把其中的 example.com 改为哪吒监控域名；i@example.com 改为你的邮箱，用于签发 SSL 证书；8008 请修改为哪吒监控的端口号（默认为 8008）。

3.重启 Caddy :
````
sing-box restart caddy
````

4.查看状态:
````
systemctl status caddy
````

-----------------------------------------------------------------------------------------------

关闭SSH和自动更新
1.编辑 agent 服务文件
````
nano /etc/systemd/system/nezha-agent.service
````

2.在`ExecStart=`这一栏最后加入
````
--disable-command-execute --disable-auto-update --disable-force-update
````

3.重新加载 systemd 管理器配置文件
````
systemctl daemon-reload
````

4.重启 agent 服务
````
systemctl restart nezha-agent
````
