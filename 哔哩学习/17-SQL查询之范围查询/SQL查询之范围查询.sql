--1.ǰ������� �ٷֱ�
select top 10 * from Test
select top 50 percent * from Test  --ǰ50%

--2.select from where �Ӿ� ���� --������Χ
--1-�Ƚ������ > < >= <= <>
select * from Test where Age >23
--2-in(2,3,4) not in(2,3,4)
select * from Test where Age in(23)
select * from Test where Age not in(23)
--3-between and  �ȼ��� >= and <=
select * from Test where Age between 24 and 33 --Age>=24 and Age<=33