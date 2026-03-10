1.下载到电脑
````
https://github.com/zhboner/realm/releases/download/v2.9.3/realm-x86_64-unknown-linux-gnu.tar.gz
````
2.上传到root
3.解压
````
tar -xzf realm-x86_64-unknown-linux-gnu.tar.gz
chmod +x realm
````
4.创建配置文件
````
nano /root/realm/config.toml
````
5.创建 systemd 服务
````
nano /etc/systemd/system/realm.service
````
6.写入
````
[Unit]
Description=Realm Proxy Service
After=network.target

[Service]
Type=simple
ExecStart=/root/realm/realm -c /root/realm/config.toml
Restart=always
User=root

[Install]
WantedBy=multi-user.target
````
7.启动服务
````
systemctl daemon-reload
systemctl start realm
systemctl enable realm
systemctl status realm
````
