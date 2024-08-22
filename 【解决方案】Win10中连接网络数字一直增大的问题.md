![image](https://github.com/Howlingx/Rewrite-Script-MITM/blob/main/img/network2.jpeg)



```
解决方法


打开注册表：

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Signatures\Unmanaged

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles
```



![image](https://github.com/Howlingx/Rewrite-Script-MITM/blob/main/img/networklist.png)



```
清理两个注册表里的信息，会发现很多之前连接过的网络
```


![image](https://github.com/Howlingx/Rewrite-Script-MITM/blob/main/img/networkname.png)



```
对于不用的网络可以选择删除就可以清除
```
