select * from Test o
left join Test2 t
on o.MName=t.TypeName

--������
select * from Test o
right join Test2 t
on o.MName=t.TypeName