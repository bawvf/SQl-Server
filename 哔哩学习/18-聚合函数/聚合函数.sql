use TestBase
go

--select count(1)α����
select count(*) from Test --һ��ͳ��һ����ļ�¼��
where Age>=24

--sum ��� ���
select sum(Age) from Test

--avg ��ƽ��
select avg(age) from Test

--max �����
select max(Age) from Test

--min ����С
select min(Age) from Test
