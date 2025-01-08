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
