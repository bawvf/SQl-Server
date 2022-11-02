use TestBase
go

--select count(1)伪造列
select count(*) from Test --一般统计一个表的记录数
where Age>=24

--sum 求和 相加
select sum(Age) from Test

--avg 求平均
select avg(age) from Test

--max 求最大
select max(Age) from Test

--min 求最小
select min(Age) from Test
