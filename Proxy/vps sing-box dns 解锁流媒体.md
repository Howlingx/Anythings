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
            "category-ai-chat-!cn",  # 国际&香港
            "dazn",
            "hotstar",
            "disney",
            "netflix",
            "youtube",
            "amazon",
            "tvb",
            "iqiyi",
            "bilibili",
            "viu",
            "tiktok",
            "now",
            "spotify",
            "kktv",  # 台湾
            "litv",
            "line",
            "hamivideo",
            "catchplay",
            "bahamut",
            "newsmax",
            "dmm",  # 日本
            "abema",
            "niconico",
            "tver",
            "projectsekai",
            "coupang",  # 韩国
            "naver",
            "fox",  # 美洲
            "hulu",
            "espn",
            "nbcuniversal",
            "hbo",
            "sling",
            "plutotv",
            "showtimeanytime",
            "discoveryplus",
            "abc",
            "rakuten",  # 欧洲
            "bbc",
            "sky"
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
