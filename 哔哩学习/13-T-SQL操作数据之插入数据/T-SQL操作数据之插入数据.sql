use TestBase
go

--1.单条数据插入  insert DML
--1:
insert into ProductType (TypeName)
values('工具类')
--2:
insert ProductType(TypeName)
select '鞋类'

--多条插入
--一次性插入多条 批量操作
--1:
insert into ProductType(TypeName)
values ('工具类1'),('工具类2'),('工具类3'),('工具类4')
--2:
insert Test(Id,MName,Age)
select 1,'admin',23 union
select 2,'aaa',23 union
select 3,'bbb',24 union
select 4,'ccc',25

--克隆数据 将一张表数据复制到另一张表
--1 目标表数据已经存在
insert into Test(MName) --目标表
select TypeName from ProductType --源表
--2 目标表之前数据库不存在,自动创建
select TypeName into Test2
from ProductType