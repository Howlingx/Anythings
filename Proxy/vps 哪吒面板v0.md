注意：以下仅适用于使用了 223boy 的一键 sing-box 脚本后的 caddy 配置方案

哪吒面板v0文档：
````
https://nezha-v0.mereith.dev/guide/dashboard.html
````

----------------------------------------------------------------------------------------------------

面板反代：

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

--------------------------------------------------------------------------------------------------

服务器 ID(排序) 修正

如果修改涉及应用程序，确保在应用停止状态下修改，避免并发访问数据库导致冲突。

1.安装 SQLite 工具：
````
sudo apt-get install sqlite3 -y
````

2.在修改之前，备份数据库以防万一：
````
cp /opt/nezha/dashboard/data/sqlite.db /opt/nezha/dashboard/data/sqlite.db.bak
````

3.打开数据库：
````
sqlite3 /opt/nezha/dashboard/data/sqlite.db
````

4.执行 SQL 更新语句：
````
UPDATE servers
SET id = (
    SELECT COUNT(*) 
    FROM servers AS s 
    WHERE s.rowid <= servers.rowid
);
````

按回车后，SQLite 将执行更新操作。

5.检查修改结果：
````
SELECT * FROM servers LIMIT 10;
````

6.输入 .quit 或按 Ctrl+D 退出 SQLite
