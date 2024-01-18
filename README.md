#### tcping
- 小白安装tcping一键bash脚本，食用：

- 一键脚本安装
```
bash <(curl -s https://raw.githubusercontent.com/fsyllkn/tcping/main/install.sh)
```

或者

```
bash <(wget -qO- https://raw.githubusercontent.com/fsyllkn/tcping/main/install.sh)
```

- 使用，如：

```
tcping 1.1.1.1 53
```
```
###=====ping 53端口，返回结果：
root@aml-s812:~# tcping 1.1.1.1 53
seq 0: tcp response from one.one.one.one (1.1.1.1) [open]  170.310 ms
seq 1: tcp response from one.one.one.one (1.1.1.1) [open]  152.691 ms
seq 2: tcp response from one.one.one.one (1.1.1.1) [open]  162.714 ms
^C
root@aml-s812:~# 
```

```
#，不写端口的话，默认80端口
tcping 1.1.1.1
```
```
###=====不写端口，默认80，返回结果：
root@aml-s812:~# tcping 1.1.1.1
seq 0: tcp response from one.one.one.one (1.1.1.1) [open]  153.817 ms
seq 1: tcp response from one.one.one.one (1.1.1.1) [open]  164.216 ms
seq 2: tcp response from one.one.one.one (1.1.1.1) [open]  156.691 ms
^C
root@aml-s812:~# 
```
- 附：手动安装步骤（参考```https://www.mengclaw.com/2018/06/03/184/```）

1.以root账户登陆，先更新系统软件源，防止系统过于精简；

1.1 CentOS系统 用这个
```
yum update -y
```
1.2Debian/Ubuntu系统 用这个
```
apt-get update -y
```
2、安装依赖：tcptraceroute和bc

2.1CentOS系统 用这个
```
yum install -y tcptraceroute bc
```
2.2Debian/Ubuntu系统 用这个
```
apt-get install -y tcptraceroute bc
```
3、安装TCPING：
3.1切换进入目录/usr/bin
```
cd /usr/bin
```
3.2下载TCP-PING可执行文件，并重命名为tcping
```
wget -O tcping https://soft.mengclaw.com/Bash/TCP-PING
```
3.3 赋予tcping执行权限
```
chmod +x tcping
```
4.测试TCPING
```
tcping 1.1.1.1 53
```






