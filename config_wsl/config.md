# wsldownload
只要有windows商店，自行下载即可  

# 安装环境
自行下载即可

# 换源
    # 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释  
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse  
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse  
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse  
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse  
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse  
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse  
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse  
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse  

# 更新代码包
`apt-get update`   
`apt-get upgrade`  

# 开始ssh登陆
`ls /etc/ssh/` 有文件就不用安装ssh服务，没有就安装`apt-get install openssh-server`.安装完毕后开启服务。   
配置GitHub的公钥请参考github的帮助，完成后配置防火墙开启22端口。入站规则->新建规则->端口->tcp->特定端口->允许链接  

