1. 安装 Speedtest CLI 工具
````
sudo apt install curl -y
````

````
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
````

````
sudo apt install speedtest
````

2.测速命令

运行测速：
````
speedtest
````

查看可用服务器列表：
````
speedtest --servers
````

指定服务器测速：
````
speedtest --server-id SERVER_ID
````
