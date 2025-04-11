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

3.DNS解锁
````
  "outbounds": [
    {
      "tag": "direct",
      "protocol": "freedom",
      "settings": {"domainStrategy": "UseIP"}
    },
    {
      "tag": "block",
      "protocol": "blackhole"
    }
  ]
}
````

````
  "dns": {
    "servers": [
      "https+local://dns.google/dns-query",
      {
        "address": "154.12.177.22",
        "port": 53,
        "domains": [
          "geosite:category-ai-chat-!cn",
          "geosite:netflix",
          "geosite:disney",
          "geosite:amazon",
          "geosite:tvb",
          "geosite:dazn",
          "geosite:hotstar",
          "geosite:tiktok",
          "geosite:bahamut",
          "geosite:kktv",
          "geosite:litv",
          "geosite:line",
          "geosite:hamivideo",
          "geosite:catchplay",
          "geosite:dmm",
          "geosite:abema"
        ]
      }
    ]
  },
````
