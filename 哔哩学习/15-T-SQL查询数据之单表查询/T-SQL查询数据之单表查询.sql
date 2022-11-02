
--1.查询一个表所有数据 所有列 
select * from Test
--选择
--2.查询部分列的数据
select MName, Age from Test
--3.数据库里表字段 英文名称，程序中列名给-中文
select MName as 用户姓名, Age 年龄
from Test
--4.排序 order by
--主键，默认就有排序功能，从小到大 升序 asc 降序 desc
select MName, Age from Test
order by Id asc, Age desc