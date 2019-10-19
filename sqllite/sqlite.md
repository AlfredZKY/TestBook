sqlite的使用请下载sqlite3.exe  
[下载链接](https://pan.baidu.com/s/1T9qYH-ozJZd6usy46CbFeg&shfl=sharepset)

## 配置环境变量
将下载好的执行文件放入到window的环境变量中，执行sqlite3后进入到sqlite3的命令行界面

## sqlite3的命令介绍
    - 显示命令的帮助信息
      `.help`
       

    - 打开数据，FILENAME是数据的存储路径
      `.open FILENAME`
       
    - 显示数据库中表 
      `.tables`
        
    - 执行sql语句
      `select * from table_name`
        
    - 导出表中的数据为csv格式
      `.output file_name.csv`
      `select * from table_name` 
      `.exit`