1. 下载并解压到 /opt
````
curl -s -L -o adguardhome.tar.gz 'https://static.adguard.com/adguardhome/release/AdGuardHome_linux_amd64.tar.gz'
sudo tar -xzf adguardhome.tar.gz -C /opt/
````

2. 设置执行权限
````
sudo chmod +x /opt/AdGuardHome/AdGuardHome
````

3. 初始化 AdGuardHome
````
sudo /opt/AdGuardHome/AdGuardHome -s install
````

4. 启动服务
````
sudo systemctl start AdGuardHome
sudo systemctl enable AdGuardHome
````

5. 检查服务状态
````
sudo systemctl status AdGuardHome
````

6. 清理安装文件
````
rm -f adguardhome.tar.gz
````

7. 开放访问端口
````
sudo ufw allow 3000/tcp
````

-------------------------------------------------------------------------------------------

DNS 解锁：
````
https://cloudflare-dns.com/dns-query
https://dns.google/dns-query
# ---------- > Global Plaform
# > DAZN
[/dazn-api.com/]154.12.177.22
[/dazn.com/]154.12.177.22
[/dazndn.com/]154.12.177.22
[/indazn.com/]154.12.177.22
[/d151l6v8er5bdm.cloudfront.net/]154.12.177.22
[/d1sgwhnao7452x.cloudfront.net/]154.12.177.22
[/dcalivedazn.akamaized.net/]154.12.177.22
[/dcblivedazn.akamaized.net/]154.12.177.22
# > Hotstar
[/hotstar.com/]154.12.177.22
[/hotstarext.com/]154.12.177.22
# > Disney+
[/disney.connections.edge.bamgrid.com/]154.12.177.22
[/disney.api.edge.bamgrid.com/]154.12.177.22
[/disney-plus.net/]154.12.177.22
[/disneyplus.com/]154.12.177.22
[/dssott.com/]154.12.177.22
[/disneynow.com/]154.12.177.22
[/disneystreaming.com/]154.12.177.22
[/cdn.registerdisney.go.com/]154.12.177.22
# > Netflix
[/netflix.com/]154.12.177.22
[/netflix.net/]154.12.177.22
[/nflximg.com/]154.12.177.22
[/nflximg.net/]154.12.177.22
[/nflxvideo.net/]154.12.177.22
[/nflxext.com/]154.12.177.22
[/nflxso.net/]154.12.177.22
# > Amazon Prime Video:
[/d1v5ir2lpwr8os.cloudfront.net/]154.12.177.22
[/d22qjgkvxw22r6.cloudfront.net/]154.12.177.22
[/d25xi40x97liuc.cloudfront.net/]154.12.177.22
[/d27xxe7juh1us6.cloudfront.net/]154.12.177.22
[/dmqdd6hw24ucf.cloudfront.net/]154.12.177.22
[/aiv-cdn.net/]154.12.177.22
[/aiv-delivery.net/]154.12.177.22
[/amazonvideo.com/]154.12.177.22
[/atv-ext-eu.amazon.com/]154.12.177.22
[/atv-ext-fe.amazon.com/]154.12.177.22
[/atv-ext.amazon.com/]154.12.177.22
[/atv-ps-eu.amazon.co.uk/]154.12.177.22
[/atv-ps-eu.amazon.com/]154.12.177.22
[/atv-ps-fe.amazon.co.jp/]154.12.177.22
[/atv-ps-fe.amazon.com/]154.12.177.22
[/atv-ps.amazon.com/]154.12.177.22
[/primevideo.com/]154.12.177.22
[/pv-cdn.net/]154.12.177.22
[/video.a2z.com/]154.12.177.22
# > TVBAnywhere+
[/tvbanywhere.com/]154.12.177.22
[/tvbanywhere.com.sg/]154.12.177.22
[/tvb.com/]154.12.177.22
[/tvb.com.au/]154.12.177.22
[/tvbc.com.cn/]154.12.177.22
[/tvbeventpower.com.hk/]154.12.177.22
[/tvbusa.com/]154.12.177.22
[/tvbweekly.com/]154.12.177.22
[/tvmedia.net.au/]154.12.177.22
# > Viu.com
[/cognito-identity.us-east-1.amazonaws.com/]154.12.177.22
[/d1k2us671qcoau.cloudfront.net/]154.12.177.22
[/d2anahhhmp1ffz.cloudfront.net/]154.12.177.22
[/dfp6rglgjqszk.cloudfront.net/]154.12.177.22
[/d3o7oi00quuwqu.cloudfront.net/]154.12.177.22
[/mobileanalytics.us-east-1.amazonaws.com/]154.12.177.22
[/viu.com/]154.12.177.22
# > Steam Store
[/steampowered.com/]154.12.177.22
# > Youtube
[/youtube.com/]154.12.177.22
[/youtubei.googleapis.com/]154.12.177.22
# > Google Search
[/google.com/]154.12.177.22
# > Instagram
[/instagram.com/]154.12.177.22
# > iQiyi
[/71.am/]154.12.177.22
[/iq.com/]154.12.177.22
[/iqiyi.com/]154.12.177.22
[/iqiyipic.com/]154.12.177.22
[/pps.tv/]154.12.177.22
[/ppsimg.com/]154.12.177.22
[/qiyi.com/]154.12.177.22
[/qiyipic.com/]154.12.177.22
[/qy.net/]154.12.177.22
# > Tiktok
[/byteoversea.com/]154.12.177.22
[/ibytedtos.com/]154.12.177.22
[/ipstatp.com/]154.12.177.22
[/muscdn.com/]154.12.177.22
[/musical.ly/]154.12.177.22
[/tiktok.com/]154.12.177.22
[/tik-tokapi.com/]154.12.177.22
[/tiktokcdn.com/]154.12.177.22
[/tiktokv.com/]154.12.177.22

# ---------- > AI Platform
# > Openai
[/openai.com/]154.12.177.22
[/chatgpt.com/]154.12.177.22
[/sora.com/]154.12.177.22
[/oaistatic.com/]154.12.177.22
[/oaiusercontent.com/]154.12.177.22
# > Claude 2
[/anthropic.com/]154.12.177.22
[/claude.ai/]154.12.177.22
# > Google Gemini
[/gemini.google.com/]154.12.177.22
[/proactivebackend-pa.googleapis.com/]154.12.177.22
# > Google AiStudio
[/aistudio.google.com/]154.12.177.22
[/alkalimakersuite-pa.clients6.google.com/]154.12.177.22
[/generativelanguage.googleapis.com/]154.12.177.22
# > Microsoft Copilot For Image Generates
[/copilot.microsoft.com/]154.12.177.22

# ---------- > Hong Kong Media
# > Now E 
[/nowe.com/]154.12.177.22
[/nowestatic.com/]154.12.177.22
# > Now TV
[/now.com/]154.12.177.22
# > Viu.TV
#include Viu.com
[/viu.now.com/]154.12.177.22
[/viu.tv/]154.12.177.22
# > MyTVSuper
[/mytvsuper.com/]154.12.177.22
[/mytvsuperlimited.hb.omtrdc.net/]154.12.177.22
[/mytvsuperlimited.sc.omtrdc.net/]154.12.177.22
[/tvb.com/]154.12.177.22
# > HBO GO Asia
[/44wilhpljf.execute-api.ap-southeast-1.amazonaws.com/]154.12.177.22
[/bcbolthboa-a.akamaihd.net/]154.12.177.22
[/dai3fd1oh325y.cloudfront.net/]154.12.177.22
[/hboasia1-i.akamaihd.net/]154.12.177.22
[/hboasia2-i.akamaihd.net/]154.12.177.22
[/hboasia3-i.akamaihd.net/]154.12.177.22
[/hboasia4-i.akamaihd.net/]154.12.177.22
[/hboasia5-i.akamaihd.net/]154.12.177.22
[/hboasialive.akamaized.net/]154.12.177.22
[/hbogoprod-vod.akamaized.net/]154.12.177.22
[/hbolb.onwardsmg.com/]154.12.177.22
[/hbounify-prod.evergent.com/]154.12.177.22
[/hbogo.co.th/]154.12.177.22
[/hbogoasia.com/]154.12.177.22
[/hbogoasia.hk/]154.12.177.22
[/hbogoasia.id/]154.12.177.22
[/hbogoasia.ph/]154.12.177.22
[/hbogoasia.sg/]154.12.177.22
[/hbogoasia.tw/]154.12.177.22
# > HOY TV
[/hoy.tv/]154.12.177.22

# ---------- > Taiwan Media
# > KKTV
[/kfs.io/]154.12.177.22
[/kktv-theater.kk.stream/]154.12.177.22
[/kkbox.com/]154.12.177.22
[/kkbox.com.tw/]154.12.177.22
[/kktv.com.tw/]154.12.177.22
[/kktv.me/]154.12.177.22
# > LiTV
[/litv.tv/]154.12.177.22
[/litvfreepc.akamaized.net/]154.12.177.22
# > MyVideo
[/cdn.plyr.io/]154.12.177.22
[/myvideo.net.tw/]154.12.177.22
# > 4GTV
[/4gtv.tv/]154.12.177.22
[/4gtvfreepc-cds.cdn.hinet.net/]154.12.177.22
[/4gtvfreepcvod-cds.cdn.hinet.net/]154.12.177.22
[/4gtvpc-cds.cdn.hinet.net/]154.12.177.22
[/4gtvpcvod-cds.cdn.hinet.net/]154.12.177.22
# > ofiii
[/ofiii.com/]154.12.177.22
# > LineTV.TW
[/d3c7rimkq79yfu.cloudfront.net/]154.12.177.22
[/linetv.tw/]154.12.177.22
# > Hami Video
[/cdn.hinet.net/]154.12.177.22
[/hamivideo.hinet.net/]154.12.177.22
[/scc.ott.hinet.net/]154.12.177.22
# > CatchPlay+
[/catchplay.com/]154.12.177.22
[/d2ivmxp5z2ww0n.cloudfront.net/]154.12.177.22
[/ols-ww100-cp.akamaized.net/]154.12.177.22
[/tra-www000-cp.akamaized.net/]154.12.177.22
# > HBO GO Asia
[/44wilhpljf.execute-api.ap-southeast-1.amazonaws.com/]154.12.177.22
[/bcbolthboa-a.akamaihd.net/]154.12.177.22
[/dai3fd1oh325y.cloudfront.net/]154.12.177.22
[/hboasia1-i.akamaihd.net/]154.12.177.22
[/hboasia2-i.akamaihd.net/]154.12.177.22
[/hboasia3-i.akamaihd.net/]154.12.177.22
[/hboasia4-i.akamaihd.net/]154.12.177.22
[/hboasia5-i.akamaihd.net/]154.12.177.22
[/hboasialive.akamaized.net/]154.12.177.22
[/hbogoprod-vod.akamaized.net/]154.12.177.22
[/hbolb.onwardsmg.com/]154.12.177.22
[/hbounify-prod.evergent.com/]154.12.177.22
[/hbogo.co.th/]154.12.177.22
[/hbogoasia.com/]154.12.177.22
[/hbogoasia.hk/]154.12.177.22
[/hbogoasia.id/]154.12.177.22
[/hbogoasia.ph/]154.12.177.22
[/hbogoasia.sg/]154.12.177.22
[/hbogoasia.tw/]154.12.177.22
# > Bahamut Anime
[/bahamut.com.tw/]154.12.177.22
[/gamer.com.tw/]154.12.177.22
[/gamer-cds.cdn.hinet.net/]154.12.177.22
[/gamer2-cds.cdn.hinet.net/]154.12.177.22
# > Friday Video
[/video.friday.tw/]154.12.177.22

# ---------- > Japan Media
# > NHK+
[/nhk.jp/]154.12.177.22
[/nhk.or.jp/]154.12.177.22
# > DMM
[/dmm-extension.com/]154.12.177.22
[/dmm.co.jp/]154.12.177.22
[/dmm.com/]154.12.177.22
[/videomarket.jp/]154.12.177.22
[/p-smith.com/]154.12.177.22
[/vmdash-cenc.akamaized.net/]154.12.177.22
[/img.vm-movie.jp/]154.12.177.22
# > Abema
[/abema.io/]154.12.177.22
[/abema.tv/]154.12.177.22
[/ds-linear-abematv.akamaized.net/]154.12.177.22
[/linear-abematv.akamaized.net/]154.12.177.22
[/ds-vod-abematv.akamaized.net/]154.12.177.22
[/vod-abematv.akamaized.net/]154.12.177.22
[/vod-playout-abematv.akamaized.net/]154.12.177.22
[/ameba.jp/]154.12.177.22
[/hayabusa.io/]154.12.177.22
[/bucketeer.jp/]154.12.177.22
[/abema.adx.promo/]154.12.177.22
[/hayabusa.media/]154.12.177.22
[/abema-tv.com/]154.12.177.22
# > NicoNico
[/dmc.nico/]154.12.177.22
[/nicovideo.jp/]154.12.177.22
[/nimg.jp/]154.12.177.22
# > Telasa
[/telasa.jp/]154.12.177.22
[/kddi-video.com/]154.12.177.22
[/videopass.jp/]154.12.177.22
[/d2lmsumy47c8as.cloudfront.net/]154.12.177.22
# > Paravi
[/paravi.jp/]154.12.177.22
# > U-NEXT
[/unext.jp/]154.12.177.22
[/nxtv.jp/]154.12.177.22
# > Hulu Japan
[/happyon.jp/]154.12.177.22
[/hulu.jp/]154.12.177.22
[/prod.hjholdings.tv/]154.12.177.22
[/streaks.jp/]154.12.177.22
[/yb.uncn.jp/]154.12.177.22
[/hjholdings.jp/]154.12.177.22
# > TVer
[/tver.jp/]154.12.177.22
[/edge.api.brightcove.com/]154.12.177.22
# [/players.brightcove.net/]154.12.177.22
[/gorin.jp/]154.12.177.22
[/screens-lab.jp/]154.12.177.22
[/tver.co.jp/]154.12.177.22
[/dogatch.jp/]154.12.177.22
# > GYAO!
[/gyao.yahoo.co.jp/]154.12.177.22
# > WOWOW
[/wowow.co.jp/]154.12.177.22
# > Videomarket
[/videomarket.jp/]154.12.177.22
# > D Anime Store
[/animestore.docomo.ne.jp/]154.12.177.22
# > Fuji TV
[/fujitv.co.jp/]154.12.177.22
[/stream.ne.jp/]154.12.177.22
# > Radiko
[/radiko.jp/]154.12.177.22
[/radionikkei.jp/]154.12.177.22
[/smartstream.ne.jp/]154.12.177.22
# > Karaoke@DAM
[/clubdam.com/]154.12.177.22
# > J:com On Demand
[/id.zaq.ne.jp/]154.12.177.22
# > AnimeFesta
[/api-animefesta.iowl.jp/]154.12.177.22
# > Lemino
[/if.lemino.docomo.ne.jp/]154.12.177.22
# > Rakuten TV JP
[/rakuten.co.jp/]154.12.177.22
# > Games
[/cygames.jp/]154.12.177.22
[/konosubafd.jp/]154.12.177.22
[/colorfulpalette.org/]154.12.177.22
[/worldflipper.jp/]154.12.177.22
[/jujutsuphanpara.jp/]154.12.177.22
# > Mora
[/mora.jp/]154.12.177.22
# > Music.jp
[/music.jp/]154.12.177.22
[/music-book.jp/]154.12.177.22
# > Reads 
[/data-cloudauthoring.magazine.rakuten.co.jp/]154.12.177.22
````
