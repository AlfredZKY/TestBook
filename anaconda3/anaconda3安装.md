## 选择镜像

[镜像下载地址:](https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/)

进入镜像之后选择最新版的镜像的下载地址，点击复制链接地址。

在Ubuntu界面执行 wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-5.3.0-Linux-x86_64.sh

chmod 755 Anaconda3-5.3.0-Linux-x86_64.sh  修改脚本的权限

![脚本](https://github.com/AlfredZKY/typora/raw/master/local_photo/install_anaconda3.jpg)

然后执行该脚本一路点击即可完成安装。

## 添加到配置文件

export PATH=/root/anaconda3/bin/:$PATH

## conda安装包慢

conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ 

conda config --set show_channel_urls yes

## anaconda在服务器配置

### 生成配置文件

使用命令：`jupyter notebook --generate-config`

### 设置密码

进入Python的编辑页面，输入如下代码：

`from notebook.auth import passwd`

`passwd()`

![脚本](https://github.com/AlfredZKY/typora/raw/master/local_photo/generate_pass.jpg)

此时会让你输入密码，然后确认密码，最后生成秘钥，记住秘钥，然后进入到刚才生成的配置文件中去。

### 修改配置文件

输入命令：`vim ~/.jupyter/jupyter_notebook_config.py`

修改如下的配置文件:

```
c.NotebookApp.allow_root = True  ##允许以root账户登录jupyter
c.NotebookApp.ip = '*'   ##可以让任何主机访问jupyter的ip地址
c.NotebookApp.open_browser = False  ##由于远程访问jupyter，因此关闭自动打开浏览器
c.NotebookApp.password = u'sha1:e7ffb45d3a77:1f1c5d539440c553c6eb17906afd876c1e6ce607'  ##复制刚才的秘钥到这里
```

<font color = '#ff0000'>注意服务器要重启</font>

### 启动jupyter notebook

`jupyter notebook`

<font color = '#ff0000'>最后在远端浏览器上访问IP地址加上端口(8888),注意关闭防火墙</font>

