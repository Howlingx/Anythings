1.编辑 xray
````
sudo nano /etc/xray/config.json
````

2.设置 ipv4优先
````
  "outbounds": [
    {
      "tag": "direct",
      "protocol": "freedom",
      "settings": {
        "domainStrategy": "UseIPv4v6"
      }
    }
  ]
````
