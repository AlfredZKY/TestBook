### windows中启动cmd时要用管理员的权限（必须）

​	在bin目下执行mysqld --remove mysql进行删除操作

1.下载安装包 
   打开mysql官网下载页面：[mysql下载链接](http://dev.mysql.com/downloads/mysql/)根据平台系统选择自己想要的版本进行下载就可以了  

2.源码下载完毕后，直接复制在c盘，并进行解压。

3.进入解压好的目录，创建一个data的空文件夹

4.配置自己的配置文件，其中要注意datadic字段要设置自己的data的路径

5.设置环境变量，解压好的bin目录加入环境变量中

6.进入mysql的bin目录下运行下面命令  
​	 `mysqld --initialize-insecure --user=mysql`  mysql服务初始化  

7.以配置来安装mysql,配置时写成自己的配置文件所在的路径  
    `mysqld --install mysql --defaults-file=C:\mysql-5.7.25-winx64\mysql-5.7.25-winx64\myini.ini`   安装默认配置文件的路径安装mysql服务   

8.启动mysql  
    `net start mysql`

9.利用客户端进入,配置文件已配置无密码登陆选项  
    `mysql -uroot -p`

10.进入数据后，更改root的登录密码  
    `use mysql`  
    `update user set authentication_string=PASSWORD('123456') where user='root';`  
    `flush privileges`  
    `exit`  

11.如果无法登陆重新更新下密码
    `alter user user('root') identified by "123456";`