# 环境：ubuntu
# 需求：重置root密码
# 解决方法：
- 先停止mysql服务
`service mysql stop`
- 进入到mysql的配置文件
# 查找my.cnf文件在哪里 $ find / -name my.cnf
# 修改my.cnf文件，在文件新增 skip-grant-tables，在启动mysql时不启动grant-tables，授权表
`cd /etc/mysql/mysql.conf.d`  
`vim mysqld.cnf`  
添加一个字段  
[mysqld]  
`skip-grant-tables`
- 启动mysql服务  
`service mysql start`  

- 更改root用户密码  
选择数据库  
`use mysql`  
更改表中的密码    
# 无password字段的版本  
`update user set authentication_string=PASSWORD("密码") where user='root';`
# 有password字段的版本  
`update user set password=password('密码') where user='root';`  

# 密码字段设置完毕后执行
`update user set plugin="mysql_native_password";`  
`flush privileges;`  
`quit;`  

# 可以通过以下命令查看user表的密码字段名称 
`show create table user\G;`
 
- 再次更爱配置文件，去掉不验证授权变量
- 重启mysql服务

 

 

 

 

 