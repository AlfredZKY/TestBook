# 新增数据
基本语法: insert into table_name[(fieldlist)] values(value_list);  
- 主键冲突更新  
    insert into table_name values(value_list) on duplicate key update field=value;   

- 主键冲突替换  
    replace into table_name values(value_list);  

# 蠕虫复制  
create table like databases.table_name;  
insert into table_name([field_list]) select field_list from table_name;  

# 高级更新
基本语法:update table_name set field=value where condition;
高级语法:update table_name set field=value where condition limit number; 


# 删除数据
高级语法:delete from table_name where condition limit number;  
基本语法:delete from table_name where condition;  

# 删除自增长
- 清空表，重置自增长  
    truncate table_name;  

# 查询
基本语法:select field_list from table_name where condition;  
完整语法:select field_list from data_source where condition group by clause  having clause  order by clause limit number;  

- select选项:  
    all 默认   
    distinct;  
- source_data  
    单表查询  
    多表查询  
    子查询  

- where between and  

- 以某个字段来分组进行数据统计    
    - group by field name;  

- having子句  
    进行条件判断，where针对磁盘数据进行判断:进入内存之后，会进行分组操作，分组结果就需要having处理。  
    having可以做where能做的机会所有事情，但where却不可以。  
    having可以识别字段别名  

- order by子句
    根据某个字段进行升序或者降序，依赖校对集  
    asc:默认升序
    desc:降序