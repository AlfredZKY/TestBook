# wsldownload

只要有 windows 商店，自行下载即可

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

# 开始 ssh 登陆

`ls /etc/ssh/` 有文件就不用安装 ssh 服务，没有就安装`apt-get install openssh-server`.安装完毕后开启服务。  
配置 GitHub 的公钥请参考 github 的帮助，完成后配置防火墙开启 22 端口。入站规则->新建规则->端口->tcp->特定端口->允许链接

# 更换创建文件夹烦人的绿色

`cd ~/`  
`dircolors -p > .dircolors`  
`vim .dircolors`  
DIR 04;34 # director.  
STICKY_OTHER_WRITABLE 04;32 # dir that is sticky and other-writable (+t,o+w)  
OTHER_WRITABLE 04;34 # dir that is other-writable (o+w) and not sticky  
常见的样式参考
00 　　　 //默认  
01 　　 　//加粗  
04 　 　　//下划线  
05 　 　　//闪烁  
07 　 　　//反显  
08 　 　　//隐藏  
文字颜色  
30 — Black //黑色  
31 — Red //红色  
32 — Green //绿色  
33 — Yellow //黄色  
34 — Blue //蓝色  
35 — Magenta //洋红色  
36 — Cyan //蓝绿色  
37 — White //白色  
背景颜色  
40 — Black  
41 — Red  
42 — Green  
43 — Yellow  
44 — Blue  
45 — Magenta  
46 — Cyan  
47 – White