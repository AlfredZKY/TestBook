# 环境：ubuntu
# 需求：安装mysql
# 解决方法：
`add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty main universe'`  
`apt-get update`（这一步花时间太长，我干脆删掉所有我以前添加的源）  
`apt-cache search mysql | grep mysql-server`  
从返回的结果查看有哪些版本可以安装，用下边的命令安装相应的版本。  
如果没有5.6版本，尝试如下操作或者安装其他版本  
编辑`/etc/apt/sources.list和/etc/apt/sources.list.save`, 搜索`deb http://archive.ubuntu.com/ubuntu trusty main`，如果这一行的结尾没有universe，手动加上，变成`deb http://archive.ubuntu.com/ubuntu trusty main universe`。然后执行`apt update`或者`apt-get update`
`apt install mysql-server-5.6 `安装5.6版本 (这里没用apt-get，而是apt)
或者
`apt install mysql-server-5.5`安装5.5版本 (这里没用apt-get，而是apt)

