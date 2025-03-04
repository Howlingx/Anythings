1. Shadowsocks 2022 或 snell
````
自己搭, 假设 TCP 和 UDP 都监听的是 0.0.0.0:12446, 加密 2022-blake3-aes-256-gcm, 密码 SaAj4IC+cHEyWoCaUXeNBE+A8DcqKRsOELe4FOuuNJE=
````

````
wget -O snell.sh --no-check-certificate https://git.io/Snell.sh && chmod +x snell.sh && ./snell.sh
````

2. 安装Shadow TLS，开放端口：
````
curl -L https://github.com/ihciah/shadow-tls/releases/download/v0.2.25/shadow-tls-x86_64-unknown-linux-musl -o /usr/local/bin/shadow-tls; chmod a+x /usr/local/bin/shadow-tls
````

````
sudo ufw allow 8443
````

 3.编辑 /etc/systemd/system/shadow-tls.service :
 ````
sudo nano /etc/systemd/system/shadow-tls.service
````

````
[Unit]
Description=Shadow-TLS Server Service
After=network-online.target
Wants=network-online.target systemd-networkd-wait-online.service

[Service]
LimitNOFILE=32767
Type=simple
User=root
Restart=on-failure
RestartSec=5s
Environment=RUST_LOG=error
Environment=MONOIO_FORCE_LEGACY_DRIVER=1
ExecStartPre=/bin/sh -c ulimit -n 51200
ExecStart=shadow-tls --fastopen --v3 --strict server --wildcard-sni=authed --listen [::]:8443 --server 127.0.0.1:12446 --tls gateway.icloud.com --password zeNP8g6yd2ADQhpktFfY

[Install]
WantedBy=multi-user.target
````
这里的 12446 是 TCP 端口. 8443不用改动

4.重载服务&启动
````
systemctl daemon-reload
````

````
sudo systemctl restart shadow-tls
````

````
systemctl enable --now shadow-tls
````

5.查看服务&日志
````
systemctl status shadow-tls
````

----------------------------------------------------------------------------------------------------
surge 示例：
````
ss2022 = ss, 服务器地址, 8443, encrypt-method=2022-blake3-aes-256-gcm, password=SaAj4IC+cHEyWoCaUXeNBE+A8DcqKRsOELe4FOuuNJE=, shadow-tls-password=MVlWnwyr9vEOK8hL, shadow-tls-sni=gateway.icloud.com, shadow-tls-version=3, udp-relay=true, udp-port=12446
````

````
snell = snell, x.x.x.x（vps的ip）, 8443, psk=xxxxxxxx, version=4, shadow-tls-password=MVlWnwyr9vEOK8hL, shadow-tls-sni=gateway.icloud.com, shadow-tls-version=3
````

