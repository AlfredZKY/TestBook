### windows中启动cmd时要用管理员的权限（必须）

​	在bin目下执行mysqld --remove mysql进行删除操作

1.下载安装包 

 	打开mysql官网下载页面：http://dev.mysql.com/downloads/mysql/

​	根据平台系统选择自己想要的版本进行下载就可以了

2.源码下载完毕后，直接复制在c盘，并进行解压。

3.进入解压好的目录，创建一个data的空文件夹

4.配置自己的配置文件，其中要注意datadic字段要设置自己的data的路径

5.进入mysql的bin目录下运行下面命令

​	`mysqld *--initialize-insecure --user=mysql`

6.以配置来安装mysql,配置时写成自己的配置文件所在的路径

`mysqld --install mysql --defaults-file=d:\mysql-5.7.14-winx64\my.ini`

7.启动mysql

`net start mysql`

