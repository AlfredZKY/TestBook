[mysql]  
#设置mysql客户端默认字符集   
default-character-set=utf8 
port=3306

[mysqld]  
#设置3306端口  
port = 3306  

#设置mysql的安装目录  
datadir=C:\mysql\mysql-5.7.25-winx64\mysql-5.7.25-winx64\data  

#允许最大连接数  
max_connections=200  

#服务端使用的字符集默认为8比特编码的latin1字符集  
character-set-server=utf8   

#创建新表时将使用的默认存储引擎  
default-storage-engine=INNODB   

#默认导出文件的路径   
secure-file-priv= ''
skip-grant-tables