show tables;
create table my_class(
    name varchar(20) not null,
    room varchar(20)
)charset utf8;

alter table my_class charset=utf8;

desc my_class;
desc my_copy;

alter table my_class add primary key(name);
alter table my_copy drop primary key;
insert into my_class values('PHP1008','b203');
insert into my_class values('PHP1008','b203') ON duplicate key update room = 'b205';

select * from my_class;

insert into my_copy values('PHP1009','a');
insert into my_copy values('PHP1009','A');
insert into my_copy values('PHP1009','b');
insert into my_copy values('PHP1009','B');
insert into my_copy values('PHP1009','c');
insert into my_copy values('PHP1009','C');

replace into my_class values('PHP1008','b207');

create table my_copy like my_class;

insert into my_copy select * from my_class;
insert into my_copy select * from my_copy;

select * from my_copy;

delete from my_copy;

alter table my_copy add name varchar(20) first;

show  create table my_copy;

update my_copy set room='d' where room='a' limit 3;

delete from my_copy where room='c' limit 3;

-- 去重
select distinct * from my_copy;

-- 子查询
select * from (select * from my_class) as s;


select * from my_copy group by room;
SET GLOBAL sql_mode = '';
select @@sql_mode;
SET sql_mode ='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';