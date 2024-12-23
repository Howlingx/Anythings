sudo 出现 unable to resolve host 解决方法

1.检查hostname：
````
sudo nano /etc/hostname
````

2.更改host：
````
sudo nano /etc/hosts
````

在 127.0.0.1 localhost 后加上 hostname 中的内容
