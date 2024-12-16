````
{
  "log": {
    "output": "/var/log/sing-box/access.log",
    "level": "info",
    "timestamp": true
  },
  "dns": {
    "servers": [
      {
        "address": "https://1.1.1.1/dns-query",
        "address_resolver": "local"
      },
      {
        "tag": "local",
        "address": "local"
      },
      {
        "tag": "dnsunblock",
        "address": "local"
      }
    ],
    "rules": [
        {
          "server": "dnsunblock",
          "geosite":[
            "tiktok",
            "disney",
            "netflix",
            "youtube",
            "amazon",
            "spotify",
            "category-ai-chat-!cn",
            "dazn",
            "hotstar",
            "tvb",
            "bahamut",
            "kktv",
            "litv",
            "line",
            "hamivideo",
            "catchplay"
          ]
        }
    ]
  },
  "ntp": {
    "enabled": true,
    "server": "time.apple.com"
  },
  "outbounds": [
    {
      "tag": "direct",
      "type": "direct"
    },
    {
      "tag": "block",
      "type": "block"
    }
  ]
}
````
