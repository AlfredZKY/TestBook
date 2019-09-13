### 环境：ubuntu

​	需求：重置root密码

#### 解决方法：

​	1.先停止mysql服务

​	`Service mysql stop`

​	2.进入到mysql的配置文件

​	 查找my.cnf文件在哪里 ` find / -name my.cnf`

​	修改my.cnf文件，在文件新增 skip-grant-tables，在启动mysql时不启动grant-tables，授权表

​	`Cd /etc/mysql/mysql.conf.d`

​	`Vim mysqld.cnf`

​	添加一个字段

​	[mysqld]

​	`skip-grant-tables`

​	3.启动mysql服务

​	`Service mysql start`

​	4.更改root用户密码

​	选择数据库

​	`Use mysql`

​	更改表中的密码

​	(无password字段的版本)

​	`update user set authentication_string=PASSWORD("密码") where user='root';`

（有password字段的版本)

​	`update user set password=password('密码') where user='root'; `

5. `update user set plugin="mysql_native_password";`

6. `flush privileges;`

7. quit;
8. 再次更爱配置文件，去掉不验证授权变量
9. 可以通过以下命令查看user表的密码字段名称 mysql> show create table user\G;
10. 重启mysql服务

 

 

 

 

 