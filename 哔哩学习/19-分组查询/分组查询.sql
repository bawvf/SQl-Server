--group by����
--select where ... group by... order by...
--ͳ�Ƹ������ж����û�
select Age,count(1) �û��� from Test
where Id>2
group by Age
having Age >12  --�����ɸѡ����	
order by Age desc