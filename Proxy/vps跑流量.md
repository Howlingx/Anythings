下面是一个简单的 Bash 脚本，用于在 VPS 上快速消耗流量。此脚本通过不断下载大文件并丢弃下载内容来模拟高带宽消耗。

1.打开文本编辑器，例如 nano，并在终端中输入以下命令以创建文件并打开编辑模式：
````
nano consume_bandwidth.sh
````

2.将脚本内容粘贴到编辑器中。例如：
````
#!/bin/bash
URL="https://speed.cloudflare.com/__down?during=download&bytes=1073741824"  # 1GB
while true; do
    wget -O /dev/null "$URL"
done
````

3.确保脚本有执行权限，运行以下命令：
````
chmod +x consume_bandwidth.sh
````

4.现在您可以运行脚本，方法是：
````
./consume_bandwidth.sh
````

------------------------------------------------------------------------------------------

其他 URL 推荐：

1.全球通用（Cloudflare Anycast）

- 100MB
````
https://speed.cloudflare.com/__down?during=download&bytes=104857600
````

- 1GB
````
https://speed.cloudflare.com/__down?during=download&bytes=1073741824
````

- 10GB
````
https://speed.cloudflare.com/__down?during=download&bytes=10737418240
````

2.香港：

- 100MB （Datapacket/CDN77）
````
http://hkg.download.datapacket.com/100mb.bin
````

- 1000MB（Datapacket/CDN77）
````
http://hkg.download.datapacket.com/1000mb.bin
````

- 10000MB（Datapacket/CDN77）
````
http://hkg.download.datapacket.com/10000mb.bin
````
