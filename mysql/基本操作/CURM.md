# 数据库的基本操作
数据库的基本操作分为3类，分别是库操作，表操作，数据操作  

# 库操作  
- 创建数据库  
    - `create database databasename [库选项]`  
    - 库选项:用来约束数据库，分为两个选项   
        - 字符集:charset/character set 具体字符集(数据的存储的编码格式),常用GBK和UTF8  
        - 校对集:collate 具体校对集(数据比较的规则)  

- 查看数据  
    - 查看所有数据库  
        - `show databases;`  

    - 查看部分数据库  
        - `show databases like 'information_%';`  -- parttern 匹配模式，可以转义 _:单个字符 %:多个字符  
        - `show databases like 'information\_%';`  

    - 查看数据库的创建
        - `show create database databasename;`

- 更新数据库 名字不可修改，修改数据的库选项   
    - `alter database database name charset charsetname collate 校对集名;`  

- 删除数据库  
    - `drop database databasename;`  
  
# 表操作  
表与字段是密不可分的  
- 创建表  
    - `create table if not exists tablename(`  -- 如果表名不存在，就创建，否则不执行，检查功能
        `字段，类型,`  
        `字段，类型,`  
        `字段，类型)charset charsetname;`  

    - 表选项 控制表的表现  
        - 字符集:charset/character set 具体字符集; -- 保证表中数据存储的字符集  
        - 校对集:collate 具体校对集;  
        - 存储引擎:engine 具体的存储引擎(innodb和myisam)  

- 查看表  
    - 查看所有表  
        - `show tables;`  
    
    - 查看部分表  
        - `show tables like 'pattern'`  
    
    - 查看表创建的信息  
        - `show create table tablename;`  

    - 查看表中字段的信息  
        - `desc/describe/show columns from tablename;`

- 更新表  
    - 修改表本身:表名和表选项  
        - 修改表名 `rename oldtablename newtablename;`  
        -- 表选项字符集 `alter table tablename charset charsetname;`  

    - 修改表字段  
        - 新增字段  
            - `alter table tablename add[columns] 字段名 类型 [列属性][位置];`  
                - 位置：  
                    - first:第一个位置  
                    - after:默认在最后一个字段之后  
        - 修改字段  
            - `alter table tablename modify 字段名 类型 [列属性][位置];`  

        - 重命名字段  
            - `alter table tablename change 旧字段 新字段  [列属性][位置];`   

        - 删除字段  
            - `alter table tablename drop 字段名;`  

- 删除表  
    - `drop table tablename;`  

# 数据操作  
- 新增数据  
    - `insert into tablename(字段列表) value(值列表);`  
    - `insert into tablename value(值列表);`  

- 查看数据  
    - `select */字段列表 from tablename [where];`  

- 更新数据  
    - `update tablename set 字段名=值 [where];`  

- 删除数据  
    - `delete from tablename [where];`  

# 中文问题  
- 查看字符集  
    - `show character set;`  

- 查看默认字符集  
    - `show variables like 'character_set%';`

- 会话层，当前有效
    - 改变服务器默认接受的字符集   
        - `set character_set_client = GBK;`  

    - 修改服务器给定数据的字符集  
        - `set character_set_results = GBK;`  

- 直接设置服务器  
    `set name GBK;`

# 校对集
- 数据比较的方式:
    - _bin:binary二进制比较，取出二进制位，一位一位的比较，区分大小写  
    - _cs:case sensitive 大小写敏感，区分大小写  
    - _ci:case insensitive 不区分大小写

- 查所有校对集
    - `show collation;`  

- 校对集应用:只有当数据比较的时候，才会生效。 
