--group by分组
--select where ... group by... order by...
--统计各部分有多少用户
select Age,count(1) 用户数 from Test
where Id>2
group by Age
having Age >12  --分组后筛选条件	
order by Age desc