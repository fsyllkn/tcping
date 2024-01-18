#### tcping
- 小白安装tcping一键bash脚本，食用：

- 安装
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
`
###=====ping 53端口，返回结果如下
root@aml-s812:~# tcping 1.1.1.1 53
seq 0: tcp response from one.one.one.one (1.1.1.1) [open]  170.310 ms
seq 1: tcp response from one.one.one.one (1.1.1.1) [open]  152.691 ms
seq 2: tcp response from one.one.one.one (1.1.1.1) [open]  162.714 ms
^C
root@aml-s812:~# 
`

```
#，不写端口的话，默认80端口
tcping 1.1.1.1
```
`
###=====不写端口，默认80，返回内容
root@aml-s812:~# tcping 1.1.1.1
seq 0: tcp response from one.one.one.one (1.1.1.1) [open]  153.817 ms
seq 1: tcp response from one.one.one.one (1.1.1.1) [open]  164.216 ms
seq 2: tcp response from one.one.one.one (1.1.1.1) [open]  156.691 ms
^C
root@aml-s812:~# 
`
