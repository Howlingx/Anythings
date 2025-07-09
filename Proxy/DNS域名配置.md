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
xray restart caddy
````

4.查看状态:
````
systemctl status caddy
````

5.Caddy 自动申请了 SSL 证书；

保存在：/root/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory
