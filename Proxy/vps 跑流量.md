下面是一个简单的 Bash 脚本，用于在 VPS 上快速消耗流量。此脚本通过不断下载大文件并丢弃下载内容来模拟高带宽消耗。

1.打开文本编辑器，例如 nano，并在终端中输入以下命令以创建文件并打开编辑模式：
````
nano consume_bandwidth.sh
````

2.将脚本内容粘贴到编辑器中。例如：
````
#!/bin/bash

# 设置并发连接数量
connections=10

# 下载目标文件的 URL
download_url="http://speedtest.tele2.net/1GB.zip"

# 本地上传目标的 IP 或地址
upload_target="https://filebin.net" # 替换为真实的上传目标

# 开始下载
echo "Starting download stress test..."
for i in $(seq 1 $connections); do
    wget -qO- $download_url > /dev/null &
done

# 开始上传
echo "Starting upload stress test..."
for i in $(seq 1 $connections); do
    curl -X POST -F "file=@/dev/zero" $upload_target > /dev/null 2>&1 &
done

# 提示用户
echo "Traffic simulation started. Press Ctrl+C to stop."
wait
````

3.确保脚本有执行权限，运行以下命令：
````
chmod +x consume_bandwidth.sh
````

4.现在您可以运行脚本，方法是：
````
./consume_bandwidth.sh
````

5.使用 nohup 命令会忽略挂起信号，使进程在 SSH 断开后继续运行:
````
nohup ./consume_bandwidth.sh > output.log 2>&1 &
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
