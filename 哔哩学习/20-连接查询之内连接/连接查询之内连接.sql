--inner join 
select Id,MName,Age
from Test
inner join Test2 on MName=TypeName

--��ʽ
select Id,MName,Age
from Test,Test2 
where MName=TypeName