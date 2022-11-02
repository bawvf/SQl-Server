--% 0个或多个
--1.like '%ad%'  包含于 最慢
select * from Test where MName like '%a%'
--2.like '%in' 以匹配字符或字符串结尾
select * from Test where MName like '%n'
--3.like 'a%'以匹配字符或字符串开头
select * from Test where MName like 'a%'

--_ 匹配单个字符 限制表达式的字符长度
select * from Test where MName like '___'

--[] 范围匹配 括号中所有字符中的一个
select * from Test where MName like 'a[dm]min'
select * from Test where MName like 'a[d-m]min'

--[^] 不在括号中所有字符之内的单个字符
select * from Test where MName like 'a[^m-z]min'
