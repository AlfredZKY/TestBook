# 安装方式
- [镜像下载地址:](https://www.mongodb.com/download-center#community)  
- `curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.0.6.tgz` 下载  
- `tar -zxvf mongodb-linux-x86_64-3.0.6.tgz`   解压  
- `mv  mongodb-linux-x86_64-3.0.6/ /usr/local/mongodb`   将解压包拷贝到指定目录  
- MongoDB 的可执行文件位于 bin 目录下，所以可以将其添加到 PATH 路径中： 
- export PATH=<mongodb-install-directory>/bin:$PATH 