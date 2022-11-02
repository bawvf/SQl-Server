--1.前面多少条 百分比
select top 10 * from Test
select top 50 percent * from Test  --前50%

--2.select from where 子句 条件 --给定范围
--1-比较运算符 > < >= <= <>
select * from Test where Age >23
--2-in(2,3,4) not in(2,3,4)
select * from Test where Age in(23)
select * from Test where Age not in(23)
--3-between and  等价于 >= and <=
select * from Test where Age between 24 and 33 --Age>=24 and Age<=33