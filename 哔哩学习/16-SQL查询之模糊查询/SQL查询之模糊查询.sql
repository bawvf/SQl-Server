--% 0������
--1.like '%ad%'  ������ ����
select * from Test where MName like '%a%'
--2.like '%in' ��ƥ���ַ����ַ�����β
select * from Test where MName like '%n'
--3.like 'a%'��ƥ���ַ����ַ�����ͷ
select * from Test where MName like 'a%'

--_ ƥ�䵥���ַ� ���Ʊ��ʽ���ַ�����
select * from Test where MName like '___'

--[] ��Χƥ�� �����������ַ��е�һ��
select * from Test where MName like 'a[dm]min'
select * from Test where MName like 'a[d-m]min'

--[^] ���������������ַ�֮�ڵĵ����ַ�
select * from Test where MName like 'a[^m-z]min'
