use TestBase
go

--1.�������ݲ���  insert DML
--1:
insert into ProductType (TypeName)
values('������')
--2:
insert ProductType(TypeName)
select 'Ь��'

--��������
--һ���Բ������ ��������
--1:
insert into ProductType(TypeName)
values ('������1'),('������2'),('������3'),('������4')
--2:
insert Test(Id,MName,Age)
select 1,'admin',23 union
select 2,'aaa',23 union
select 3,'bbb',24 union
select 4,'ccc',25

--��¡���� ��һ�ű����ݸ��Ƶ���һ�ű�
--1 Ŀ��������Ѿ�����
insert into Test(MName) --Ŀ���
select TypeName from ProductType --Դ��
--2 Ŀ���֮ǰ���ݿⲻ����,�Զ�����
select TypeName into Test2
from ProductType