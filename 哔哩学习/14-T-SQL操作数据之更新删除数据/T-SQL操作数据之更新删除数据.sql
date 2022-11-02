use TestBase
go

--更新数据 update 几乎不会不用where条件
--如果不加where条件，会把整个表的数据都修改了
update Test set MName='ccc1',Age=26
where Id=4

--数据删除：
--只是删除数据，表还在
--1.delete from table 不加条件，会删除整个表数据，几乎都要加where条件
--加where条件 标识列值还是接着删除前的值而自增，而不是从初始值开始
--会造成料识列的值不连续
delete from Test where Id = 20
--如果想删除后，标识列的值恢复到初始值

--连同表一起删除
truncate table Test --表数据清空，恢复到初始化，标识列也恢复
--truncate效率比felete效率高
insert into Test(Id,MName,Age)
values (1,'aaa',19)