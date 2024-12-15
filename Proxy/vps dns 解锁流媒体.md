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
        "tag": "tiktok",
        "address": "local"
      },
      {
        "tag": "disney",
        "address": "local"
      },
      {
        "tag": "netflix",
        "address": "local"
      },
      {
        "tag": "youtube",
        "address": "local"
      },
      {
        "tag": "amazon",
        "address": "local"
      },
      {
        "tag": "spotify",
        "address": "local"
      },
      {
        "tag": "category-ai-chat-!cn",
        "address": "local"
      },
      {
        "tag": "dazn",
        "address": "local"
      },
      {
        "tag": "hotstar",
        "address": "local"
      },
      {
        "tag": "tvb",
        "address": "local"
      },
      {
        "tag": "bahamut",
        "address": "local"
      },
      {
        "tag": "kktv",
        "address": "local"
      },
      {
        "tag": "litv",
        "address": "local"
      },
      {
        "tag": "line",
        "address": "local"
      },
      {
        "tag": "hamivideo",
        "address": "local"
      },
      {
        "tag": "catchplay",
        "address": "local"
      }
    ],
    "rules": [
        {
                "server": "tiktok",
                "geosite":["tiktok"]
        },
        {
                "server": "disney",
                "geosite":["disney"]
        },
        {
                "server": "netflix",
                "geosite":["netflix"]
        },
        {
                "server": "youtube",
                "geosite":["youtube"]
        },
        {
                "server": "amazon",
                "geosite":["amazon"]
        },
        {
                "server": "spotify",
                "geosite":["spotify"]
        },
        {
                "server": "category-ai-chat-!cn",
                "geosite":["category-ai-chat-!cn"]
        },
        {
                "server": "dazn",
                "geosite":["dazn"]
        },
        {
                "server": "hotstar",
                "geosite":["hotstar"]
        },
        {
                "server": "tvb",
                "geosite":["tvb"]
        },
        {
                "server": "bahamut",
                "geosite":["bahamut"]
        },
        {
                "server": "kktv",
                "geosite":["kktv"]
        },
        {
                "server": "litv",
                "geosite":["litv"]
        },
        {
                "server": "line",
                "geosite":["line"]
        },
        {
                "server": "hamivideo",
                "geosite":["hamivideo"]
        },
        {
                "server": "catchplay",
                "geosite":["catchplay"]
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
