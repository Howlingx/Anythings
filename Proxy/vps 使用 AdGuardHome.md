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
# openai
[/ai.com/]154.12.177.22
[/chatgpt.com/]154.12.177.22
[/chat.com/]154.12.177.22
[/oaistatic.com/]154.12.177.22
[/oaiusercontent.com/]154.12.177.22
[/openai.com/]154.12.177.22
[/sora.com/]154.12.177.22
[/openai.com.cdn.cloudflare.net/]154.12.177.22
[/openaiapi-site.azureedge.net/]154.12.177.22
[/openaicom-api-bdcpf8c6d2e9atf6.z01.azurefd.net/]154.12.177.22
[/openaicomproductionae4b.blob.core.windows.net/]154.12.177.22
[/production-openaicom-storage.azureedge.net/]154.12.177.22
[/o33249.ingest.sentry.io/]154.12.177.22
[/openaicom.imgix.net/]154.12.177.22
[/browser-intake-datadoghq.com/]154.12.177.22
[/chatgpt.livekit.cloud/]154.12.177.22
[/host.livekit.cloud/]154.12.177.22
[/turn.livekit.cloud/]154.12.177.22
# dazn
[/dazn-api.com/]154.12.177.22
[/dazn.com/]154.12.177.22
[/dazndn.com/]154.12.177.22
[/indazn.com/]154.12.177.22
[/indaznlab.com/]154.12.177.22
# hotstar
[/hotstar.com/]154.12.177.22
[/hotstar-cdn.net/]154.12.177.22
[/hotstar-labs.com/]154.12.177.22
[/hotstarext.com/]154.12.177.22
[/hsprepack.akamaized.net/]154.12.177.22
# disney
[/disney.com/]154.12.177.22
[/20thcenturystudios.com.au/]154.12.177.22
[/20thcenturystudios.com.br/]154.12.177.22
[/20thcenturystudios.jp/]154.12.177.22
[/adventuresbydisney.com/]154.12.177.22
[/babble.com/]154.12.177.22
[/babyzone.com/]154.12.177.22
[/bamgrid.com/]154.12.177.22
[/beautyandthebeastmusical.co.uk/]154.12.177.22
[/dilcdn.com/]154.12.177.22
[/disney-asia.com/]154.12.177.22
[/disney-discount.com/]154.12.177.22
[/disney-plus.net/]154.12.177.22
[/disney-portal.my.onetrust.com/]154.12.177.22
[/disney-studio.com/]154.12.177.22
[/disney-studio.net/]154.12.177.22
[/disney.my.sentry.io/]154.12.177.22
[/disneyadsales.com/]154.12.177.22
[/disneyarena.com/]154.12.177.22
[/disneyaulani.com/]154.12.177.22
[/disneybaby.com/]154.12.177.22
[/disneycareers.com/]154.12.177.22
[/disneychannelonstage.com/]154.12.177.22
[/disneychannelroadtrip.com/]154.12.177.22
[/disneycruisebrasil.com/]154.12.177.22
[/disneyenconcert.com/]154.12.177.22
[/disneyiejobs.com/]154.12.177.22
[/disneyinflight.com/]154.12.177.22
[/disneyinternational.com/]154.12.177.22
[/disneyinternationalhd.com/]154.12.177.22
[/disneyjunior.com/]154.12.177.22
[/disneyjuniortreataday.com/]154.12.177.22
[/disneylatino.com/]154.12.177.22
[/disneymagicmomentsme.com/]154.12.177.22
[/disneyme.com/]154.12.177.22
[/disneymeetingsandevents.com/]154.12.177.22
[/disneymovieinsiders.com/]154.12.177.22
[/disneymusicpromotion.com/]154.12.177.22
[/disneynewseries.com/]154.12.177.22
[/disneynow.com/]154.12.177.22
[/disneypeoplesurveys.com/]154.12.177.22
[/disneyplus.bn5x.net/]154.12.177.22
[/disneyplus.com/]154.12.177.22
[/disneyplus.com.ssl.sc.omtrdc.net/]154.12.177.22
[/disneyredirects.com/]154.12.177.22
[/disneysrivieraresort.com/]154.12.177.22
[/disneystore.com/]154.12.177.22
[/disneystreaming.com/]154.12.177.22
[/disneysubscription.com/]154.12.177.22
[/disneytickets.co.uk/]154.12.177.22
[/disneyturkiye.com.tr/]154.12.177.22
[/disneytvajobs.com/]154.12.177.22
[/disneyworld-go.com/]154.12.177.22
[/dssott.com/]154.12.177.22
[/go-disneyworldgo.com/]154.12.177.22
[/go.com/]154.12.177.22
[/mickey.tv/]154.12.177.22
[/moviesanywhere.com/]154.12.177.22
[/nomadlandmovie.ch/]154.12.177.22
[/playmation.com/]154.12.177.22
[/shopdisney.com/]154.12.177.22
[/shops-disney.com/]154.12.177.22
[/sorcerersarena.com/]154.12.177.22
[/spaindisney.com/]154.12.177.22
[/star-brasil.com/]154.12.177.22
[/star-latam.com/]154.12.177.22
[/starwars.com/]154.12.177.22
[/starwarsgalacticstarcruiser.com/]154.12.177.22
[/starwarskids.com/]154.12.177.22
[/streamingdisney.net/]154.12.177.22
[/thestationbymaker.com/]154.12.177.22
[/thisispolaris.com/]154.12.177.22
[/watchdisneyfe.com/]154.12.177.22
# netflix
[/netflix.com/]154.12.177.22
[/netflix.net/]154.12.177.22
[/netflixinvestor.com/]154.12.177.22
[/netflixtechblog.com/]154.12.177.22
[/nflxext.com/]154.12.177.22
[/nflximg.com/]154.12.177.22
[/nflximg.net/]154.12.177.22
[/nflxsearch.net/]154.12.177.22
[/nflxso.net/]154.12.177.22
[/nflxvideo.net/]154.12.177.22
[/netflixdnstest0.com/]154.12.177.22
[/netflixdnstest1.com/]154.12.177.22
[/netflixdnstest2.com/]154.12.177.22
[/netflixdnstest3.com/]154.12.177.22
[/netflixdnstest4.com/]154.12.177.22
[/netflixdnstest5.com/]154.12.177.22
[/netflixdnstest6.com/]154.12.177.22
[/netflixdnstest7.com/]154.12.177.22
[/netflixdnstest8.com/]154.12.177.22
[/netflixdnstest9.com/]154.12.177.22
[/netflixdnstest10.com/]154.12.177.22
# tvb
[/bigbigchannel.com.hk/]154.12.177.22
[/bigbigshop.com/]154.12.177.22
[/encoretvb.com/]154.12.177.22
[/tvb.com/]154.12.177.22
[/tvb.com.au/]154.12.177.22
[/tvbanywhere.com/]154.12.177.22
[/tvbanywhere.com.sg/]154.12.177.22
[/tvbc.com.cn/]154.12.177.22
[/tvbeventpower.com.hk/]154.12.177.22
[/tvbusa.com/]154.12.177.22
[/tvbweekly.com/]154.12.177.22
[/tvmedia.net.au/]154.12.177.22
[/mytvsuper.com/]154.12.177.22
# tiktok
[/byteoversea.com/]154.12.177.22
[/muscdn.com/]154.12.177.22
[/musical.ly/]154.12.177.22
[/tik-tokapi.com/]154.12.177.22
[/tiktok.com/]154.12.177.22
[/tiktokcdn.com/]154.12.177.22
[/tiktokv.com/]154.12.177.22
[/ttlivecdn.com/]154.12.177.22
[/ttwstatic.com/]154.12.177.22
[/p16-tiktokcdn-com.akamaized.net/]154.12.177.22
# now
[/now.com/]154.12.177.22
[/now.com.hk/]154.12.177.22
[/nowe.com/]154.12.177.22
[/nowe.hk/]154.12.177.22
[/now-tv.com/]154.12.177.22
[/now-ashare.com/]154.12.177.22
# Google Gemini
[/deepmind.com/]154.12.177.22
[/deepmind.google/]154.12.177.22
[/geller-pa.googleapis.com/]154.12.177.22
[/generativelanguage.googleapis.com/]154.12.177.22
[/proactivebackend-pa.googleapis.com/]154.12.177.22
[/ai.google.dev/]154.12.177.22
[/alkalicore-pa.clients6.google.com/]154.12.177.22
[/alkalimakersuite-pa.clients6.google.com/]154.12.177.22
[/generativeai.google/]154.12.177.22
[/makersuite.google.com/]154.12.177.22
[/aistudio.google.com/]154.12.177.22
[/bard.google.com/]154.12.177.22
[/gemini.google.com/]154.12.177.22
# bahamut
[/bahamut.akamaized.net/]154.12.177.22
[/bahamut.com.tw/]154.12.177.22
[/gamer.com.tw/]154.12.177.22
[/gamer2-cds.cdn.hinet.net/]154.12.177.22
[/gamer-cds.cdn.hinet.net/]154.12.177.22
````
