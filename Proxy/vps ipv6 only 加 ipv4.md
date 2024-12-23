为ipv6 VPS添加一个ipv4地址

1.
````
apt update && apt install wget curl -y
````

2.
````
wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh
````

ipv6 only的机器选择 第一项 即可，然后一路回车全部默认即可

至此，你的VPS已经拥有ipv4仅出口和端口全部开放的ipv6地址了

除了不能通过ipv4访问，其它与普通VPS无异了。
