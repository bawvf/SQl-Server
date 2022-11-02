--inner join 
select Id,MName,Age
from Test
inner join Test2 on MName=TypeName

--ÒþÊ½
select Id,MName,Age
from Test,Test2 
where MName=TypeName