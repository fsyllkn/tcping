#!/bin/bash

# 判断系统
if [ -f /etc/redhat-release ]; then
    # CentOS 系统
    yum update -y
    yum install -y tcptraceroute bc
elif [ -f /etc/lsb-release ] || [ -f /etc/debian_version ]; then
    # Ubuntu/Debian 系统
    apt-get update -y
    apt-get install -y tcptraceroute bc
else
    echo "Unsupported operating system."
    exit 1
fi

# 安装 TCPING
cd /usr/bin
wget -O tcping https://soft.mengclaw.com/Bash/TCP-PING
chmod +x tcping

# 测试 TCPING
tcping --version
echo "安装成功，请使用命令tcping 8.8.8.8 53测试是否可用。参考https://www.mengclaw.com/2018/06/03/184/"
