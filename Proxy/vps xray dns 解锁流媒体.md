````
{
  "log": {
    "access": "/var/log/xray/access.log",
    "error": "/var/log/xray/error.log",
    "loglevel": "warning"
  },
  "dns": {
    "servers": [
      "https+local://dns.google/dns-query",
      {
       "address": "localhost",
       "domains": [
         "geosite:category-ai-chat-!cn","geosite:dazn","geosite:hotstar","geosite:disney","geosite:netflix","geosite:amazon","geosite:tvb","geosite:iqiyi","geosite:bilibili","geosite:viu","geosite:tiktok","geosite:now","geosite:kktv","geosite:litv","geosite:line","geosite:hamivideo","geosite:catchplay","geosite:bahamut","geosite:newsmax","geosite:dmm","geosite:abema","geosite:niconico","geosite:tver","geosite:projectsekai","geosite:coupang","geosite:naver","geosite:hulu","geosite:espn","geosite:nbcuniversal","geosite:hbo","geosite:sling","geosite:plutotv","geosite:showtimeanytime","geosite:discoveryplus"
      ]
     }
    ]
  },
  "api": {
    "tag": "api",
    "services": [
      "HandlerService",
      "LoggerService",
      "StatsService"
    ]
  },
  "stats": {},
  "policy": {
    "levels": {
      "0": {
        "handshake": 7,
        "connIdle": 617,
        "uplinkOnly": 8,
        "downlinkOnly": 8,
        "statsUserUplink": true,
        "statsUserDownlink": true
      }
    },
    "system": {
      "statsInboundUplink": true,
      "statsInboundDownlink": true,
      "statsOutboundUplink": true,
      "statsOutboundDownlink": true
    }
  },
  "routing": {
    "domainStrategy": "IPIfNonMatch",
    "rules": [
      {
        "type": "field",
        "inboundTag": [
          "api"
        ],
        "outboundTag": "api"
      },
      {
        "type": "field",
        "domain": [
          "geosite:openai"
        ],
        "marktag": "fix_openai",
        "outboundTag": "direct"
      },
      {
        "type": "field",
        "ip": [
          "geoip:private"
        ],
        "outboundTag": "block"
      }
    ]
  },
  "inbounds": [
    {
      "tag": "api",
      "port": 61753,
      "listen": "127.0.0.1",
      "protocol": "dokodemo-door",
      "settings": {
        "address": "127.0.0.1"
      }
    }
  ],
  "outbounds": [
    {
      "tag": "direct",
      "protocol": "freedom"
    },
    {
      "tag": "block",
      "protocol": "blackhole"
    }
  ]
}
````
