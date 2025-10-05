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
请把其中的 example.com 改为域名；i@example.com 改为邮箱，用于签发 SSL 证书；8008 修改为端口号。

3.重启 Caddy :
````
xray restart caddy
````

4.查看状态:
````
systemctl status caddy
````

证书目录
Caddy 自动申请了 SSL 证书；如果你有需要，可以直接使用

保存在：/root/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory

此目录下有你配置的相关域名，打开相关域名的目录

就能找到证书相关，主要使用 .crt 和 .key 这两个文件，一个是证书一个是密钥
