# nodejs下载地址
[下载地址](http://nodejs.cn/download/)  

# 选择版本
windows直接下载安装即可，这里选则linux版本，如下图  
node-v10.6.0-linux-x64.tar.xz  

# 安装
tar -xvf node-v10.6.0-linux-x64.tar.xz -C 选择自己目录  

# 重命名文件
mv node-v10.6.0-linux-x64 nodejs  

# 建立软连接变为全局
- `ln -s /usr/local/nodejs/bin/npm /usr/local/bin/`  
- `ln -s /usr/local/nodejs/bin/node /usr/local/bin/`  

# 测试
`node -v`  
