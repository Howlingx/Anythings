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
[/dazn-api.com/]91.103.120.36
[/dazn.com/]91.103.120.36
[/dazndn.com/]91.103.120.36
[/indazn.com/]91.103.120.36
[/d151l6v8er5bdm.cloudfront.net/]91.103.120.36
[/d1sgwhnao7452x.cloudfront.net/]91.103.120.36
[/dcalivedazn.akamaized.net/]91.103.120.36
[/dcblivedazn.akamaized.net/]91.103.120.36
# > Hotstar
[/hotstar.com/]91.103.120.36
[/hotstarext.com/]91.103.120.36
# > Disney+
[/disney.connections.edge.bamgrid.com/]91.103.120.36
[/disney.api.edge.bamgrid.com/]91.103.120.36
[/disney-plus.net/]91.103.120.36
[/disneyplus.com/]91.103.120.36
[/dssott.com/]91.103.120.36
[/disneynow.com/]91.103.120.36
[/disneystreaming.com/]91.103.120.36
[/cdn.registerdisney.go.com/]91.103.120.36
# > Netflix
[/netflix.com/]91.103.120.36
[/netflix.net/]91.103.120.36
[/nflximg.com/]91.103.120.36
[/nflximg.net/]91.103.120.36
[/nflxvideo.net/]91.103.120.36
[/nflxext.com/]91.103.120.36
[/nflxso.net/]91.103.120.36
# > Amazon Prime Video:
[/d1v5ir2lpwr8os.cloudfront.net/]91.103.120.36
[/d22qjgkvxw22r6.cloudfront.net/]91.103.120.36
[/d25xi40x97liuc.cloudfront.net/]91.103.120.36
[/d27xxe7juh1us6.cloudfront.net/]91.103.120.36
[/dmqdd6hw24ucf.cloudfront.net/]91.103.120.36
[/aiv-cdn.net/]91.103.120.36
[/aiv-delivery.net/]91.103.120.36
[/amazonvideo.com/]91.103.120.36
[/atv-ext-eu.amazon.com/]91.103.120.36
[/atv-ext-fe.amazon.com/]91.103.120.36
[/atv-ext.amazon.com/]91.103.120.36
[/atv-ps-eu.amazon.co.uk/]91.103.120.36
[/atv-ps-eu.amazon.com/]91.103.120.36
[/atv-ps-fe.amazon.co.jp/]91.103.120.36
[/atv-ps-fe.amazon.com/]91.103.120.36
[/atv-ps.amazon.com/]91.103.120.36
[/primevideo.com/]91.103.120.36
[/pv-cdn.net/]91.103.120.36
[/video.a2z.com/]91.103.120.36
# > Tiktok
[/byteoversea.com/]91.103.120.36
[/ibytedtos.com/]91.103.120.36
[/ipstatp.com/]91.103.120.36
[/muscdn.com/]91.103.120.36
[/musical.ly/]91.103.120.36
[/tiktok.com/]91.103.120.36
[/tik-tokapi.com/]91.103.120.36
[/tiktokcdn.com/]91.103.120.36
[/tiktokv.com/]91.103.120.36
# ---------- > Taiwan Media
# > KKTV
[/kfs.io/]91.103.120.36
[/kktv-theater.kk.stream/]91.103.120.36
[/kkbox.com/]91.103.120.36
[/kkbox.com.tw/]91.103.120.36
[/kktv.com.tw/]91.103.120.36
[/kktv.me/]91.103.120.36
# > LiTV
[/litv.tv/]91.103.120.36
[/ntd-tgc.cdn.hinet.net/]91.103.120.36
# > MyVideo
[/cdn.plyr.io/]91.103.120.36
[/myvideo.net.tw/]91.103.120.36
# > 4GTV
[/4gtv.tv/]91.103.120.36
[/4gtvfreepc-cds.cdn.hinet.net/]91.103.120.36
[/4gtvfreepcvod-cds.cdn.hinet.net/]91.103.120.36
[/4gtvpc-cds.cdn.hinet.net/]91.103.120.36
[/4gtvpcvod-cds.cdn.hinet.net/]91.103.120.36
# > ofiii
[/ofiii.com/]91.103.120.36
[/ntdofifreepc-tgc.cdn.hinet.net/]91.103.120.36
# > LineTV.TW
[/d3c7rimkq79yfu.cloudfront.net/]91.103.120.36
[/linetv.tw/]91.103.120.36
# > Hami Video
[/cdn.hinet.net/]91.103.120.36
[/hamivideo.hinet.net/]91.103.120.36
[/scc.ott.hinet.net/]91.103.120.36
# > CatchPlay+
[/catchplay.com/]91.103.120.36
[/d2ivmxp5z2ww0n.cloudfront.net/]91.103.120.36
[/ols-ww100-cp.akamaized.net/]91.103.120.36
[/tra-www000-cp.akamaized.net/]91.103.120.36
# > Bahamut Anime
[/bahamut.com.tw/]91.103.120.36
[/gamer.com.tw/]91.103.120.36
[/gamer-cds.cdn.hinet.net/]91.103.120.36
[/gamer2-cds.cdn.hinet.net/]91.103.120.36
# > HBO / Max
[/max.com/]91.103.120.36
[/hbo.com/]91.103.120.36
[/hbogo.com/]91.103.120.36
[/hbomax.com/]91.103.120.36
[/hbomaxcdn.com/]91.103.120.36
[/hbonow.com/]91.103.120.36
[/maxgo.com/]91.103.120.36
[/discomax.com/]91.103.120.36
# > Friday Video
[/video.friday.tw/]91.103.120.36
# ---------- > Japan Media
# > NHK+
[/nhk.jp/]91.103.120.36
[/nhk.or.jp/]91.103.120.36
# > DMM
[/dmm-extension.com/]91.103.120.36
[/dmm.co.jp/]91.103.120.36
[/dmm.com/]91.103.120.36
[/videomarket.jp/]91.103.120.36
[/p-smith.com/]91.103.120.36
[/vmdash-cenc.akamaized.net/]91.103.120.36
[/img.vm-movie.jp/]91.103.120.36
# > Abema
[/abema.io/]91.103.120.36
[/abema.tv/]91.103.120.36
[/ds-linear-abematv.akamaized.net/]91.103.120.36
[/linear-abematv.akamaized.net/]91.103.120.36
[/ds-vod-abematv.akamaized.net/]91.103.120.36
[/vod-abematv.akamaized.net/]91.103.120.36
[/vod-playout-abematv.akamaized.net/]91.103.120.36
[/ameba.jp/]91.103.120.36
[/hayabusa.io/]91.103.120.36
[/bucketeer.jp/]91.103.120.36
[/abema.adx.promo/]91.103.120.36
[/hayabusa.media/]91.103.120.36
[/abema-tv.com/]91.103.120.36
# > NicoNico
[/dmc.nico/]91.103.120.36
[/nicovideo.jp/]91.103.120.36
[/nimg.jp/]91.103.120.36
# > Telasa
[/telasa.jp/]91.103.120.36
[/kddi-video.com/]91.103.120.36
[/videopass.jp/]91.103.120.36
[/d2lmsumy47c8as.cloudfront.net/]91.103.120.36
# > Paravi
[/paravi.jp/]91.103.120.36
# > U-NEXT
[/unext.jp/]91.103.120.36
[/nxtv.jp/]91.103.120.36
# > Hulu Japan
[/happyon.jp/]91.103.120.36
[/hulu.jp/]91.103.120.36
[/prod.hjholdings.tv/]91.103.120.36
[/streaks.jp/]91.103.120.36
[/yb.uncn.jp/]91.103.120.36
[/hjholdings.jp/]91.103.120.36
# > TVer
[/tver.jp/]91.103.120.36
[/edge.api.brightcove.com/]91.103.120.36
# [/players.brightcove.net/]91.103.120.36
[/gorin.jp/]91.103.120.36
[/screens-lab.jp/]91.103.120.36
[/tver.co.jp/]91.103.120.36
[/dogatch.jp/]91.103.120.36
# > GYAO!
[/gyao.yahoo.co.jp/]91.103.120.36
# > WOWOW
[/wowow.co.jp/]91.103.120.36
# > Videomarket
[/videomarket.jp/]91.103.120.36
# > D Anime Store
[/animestore.docomo.ne.jp/]91.103.120.36
# > Fuji TV
[/fujitv.co.jp/]91.103.120.36
[/stream.ne.jp/]91.103.120.36
# > Radiko
[/radiko.jp/]91.103.120.36
[/radionikkei.jp/]91.103.120.36
[/smartstream.ne.jp/]91.103.120.36
# > Karaoke@DAM
[/clubdam.com/]91.103.120.36
# > J:com On Demand
[/id.zaq.ne.jp/]91.103.120.36
# > AnimeFesta
[/api-animefesta.iowl.jp/]91.103.120.36
# > Lemino
[/if.lemino.docomo.ne.jp/]91.103.120.36
# > Rakuten TV JP
[/rakuten.co.jp/]91.103.120.36
# > Games
[/cygames.jp/]91.103.120.36
[/api.games.umamusume.jp/]91.103.120.36
[/konosubafd.jp/]91.103.120.36
[/colorfulpalette.org/]91.103.120.36
[/worldflipper.jp/]91.103.120.36
[/jujutsuphanpara.jp/]91.103.120.36
# > Mora
[/mora.jp/]91.103.120.36
# > Music.jp
[/music.jp/]91.103.120.36
[/music-book.jp/]91.103.120.36
# > Reads 
[/data-cloudauthoring.magazine.rakuten.co.jp/]91.103.120.36
# ---------- > AI Platform
# > Openai
[/openai.com/]91.103.120.36
[/chatgpt.com/]91.103.120.36
[/sora.com/]91.103.120.36
[/oaistatic.com/]91.103.120.36
[/oaiusercontent.com/]91.103.120.36
# > Claude 2
[/anthropic.com/]91.103.120.36
[/claude.ai/]91.103.120.36
# > Google Gemini
[/gemini.google.com/]91.103.120.36
[/proactivebackend-pa.googleapis.com/]91.103.120.36
[/aisandbox-pa.googleapis.com/]91.103.120.36
[/robinfrontend-pa.googleapis.com/]91.103.120.36
# > Google AiStudio
[/aistudio.google.com/]91.103.120.36
[/alkalimakersuite-pa.clients6.google.com/]91.103.120.36
[/generativelanguage.googleapis.com/]91.103.120.36
[/alkalicore-pa.clients6.google.com/]91.103.120.36
[/waa-pa.clients6.google.com/]91.103.120.36
# > Microsoft Copilot For Image Generates
[/copilot.microsoft.com/]91.103.120.36
# ---------- > Others
# > ExHantai/E-hentai
[/exhentai.org/]91.103.120.36
[/e-hentai.org/]91.103.120.36
````
