show tables;

show create table class;

desc   class;
describe class;
show columns from class;

show character set;
show variables like 'character_set%';
show collation;

-- 主键
create table my_pril(
    name varchar(20) not null comment '姓名',
    number char(10) primary key
)charset utf8;

desc my_pril;

-- 复合主键(新增)
create table my_pri2(
    number char(10) comment '学号:itcast + 0000',
    course char(10) comment '课程代码:3901 + 0000',
    score tinyint unsigned default 60 comment '成绩',
    -- 增加主键限制: 学号和课程号是个对应，具有唯一行
    primary key(number,course)
)charset utf8;

desc my_pri2;
show create table my_pri2;

alter table tablename add primary key(字段名)

create table my_pri3(
    course char(10) not null comment '课程编号:3901 + 0000',
    name varchar(10) not null comment '课程名字'
)charset utf8;

desc my_pri3;

-- 新增主键
alter  table my_pri3 add primary key(course);

-- 删除主键
alter table tablename drop primary key

alter table my_pri3 drop primary key;

-- 自增长
create table my_auto(
    id int primary key auto_increment comment '自增长'
)charset utf8;

desc my_auto;

-- 插入
insert into my_auto values(1);
insert into my_auto values(NULL);

select * from my_auto;

-- 修改自增长
alter table tablename auto_increment=值;
alter table my_auto auto_increment = 2;

-- 查看自增长变量
show variables like 'auto_increment%';

-- 删除自增长
alter table tablename modify 字段名 类型;
alter table my_auto modify id int primary key;  --主键是单独分离的，不用再加
alter table my_auto modify id int ;
-- 修改变量实现不同的效果，修改是对整个数据修改，不是单张表
set auto_increment_increment = 5;


-- 创建唯一键
create table my_uni(
    number char(10) unique comment '学号:唯一，可以为空',
    name varchar(10) unique not null 
)charset utf8;

desc my_uni;

-- 删除唯一键
alter table tablename drop index 字段名;
alter table my_uni drop index name;