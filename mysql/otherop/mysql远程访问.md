### 开启远程访问：

​	首先记得你只要改了权限设置，请记得重启下mysql数据库服务。

​	1.首先请打开mysql的配置文件

​	2.用root用户进入mysql命令行界面，创建时必须是已存在的才可以。

## 创建用户

 　create user 'feng'@'远程登录的ip' identified by '123456';

## 赋予权限

​	grant create,delete,update,select,insert,drop on anchor_data to 'feng'@'localhost';

### 查询该用户是否对数据库有权限：

​	1.show grants for feng@localhost;

![img](../images/mysql授权.png)

​	2.select * from user where user='feng' \G

![img](../images/mysql查看权限.png)

这个是显示的全局变量的。

如果新建的用户还是无法进行授权的话。

1.用root用户登录。mysql -uroot -ppassword

2.切换到mysql数据库。use mysql

3.显示所有表，主要看user表格。show tables;

4.查看user表中某个用户的权限。select * from user where user=root and host = localhost;

5.在列表中显示root用户的localhost的权限都是‘N’，表示root用户本地登录不具有的权限.

6.sql语句进行权限的更新。

`update user set Select_priv = 'Y',Insert_priv = 'Y', Update_priv = 'Y',Delete_priv = 'Y',Create_priv = 'Y',Drop_priv = 'Y',Reload_priv = 'Y',Shutdown_priv = 'Y',Process_priv = 'Y',File_priv = 'Y',Grant_priv = 'Y',References_priv = 'Y', Index_priv = 'Y',Alter_priv = 'Y',Show_db_priv = 'Y',Super_priv = 'Y',Create_tmp_table_priv = 'Y',Lock_tables_priv = 'Y', Execute_priv = 'Y',Repl_slave_priv = 'Y',Repl_client_priv= 'Y',Create_view_priv = 'Y',Show_view_priv = 'Y',Create_routine_priv = 'Y',Alter_routine_priv= 'Y',Create_user_priv = 'Y', Event_priv = 'Y',Trigger_priv = 'Y',Create_tablespace_priv = 'Y' where user='feng';`

7.切记重新mysql服务。

mysql 最新版已经把创建用户和赋予权限的方式分开了。

3.配置完一切，并重启mysql服务后，用一下命令就可以在指定的ip服务器上登录mysql服务器