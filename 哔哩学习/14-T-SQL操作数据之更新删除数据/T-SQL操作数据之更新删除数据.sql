use TestBase
go

--�������� update �������᲻��where����
--�������where�������������������ݶ��޸���
update Test set MName='ccc1',Age=26
where Id=4

--����ɾ����
--ֻ��ɾ�����ݣ�����
--1.delete from table ������������ɾ�����������ݣ�������Ҫ��where����
--��where���� ��ʶ��ֵ���ǽ���ɾ��ǰ��ֵ�������������Ǵӳ�ʼֵ��ʼ
--�������ʶ�е�ֵ������
delete from Test where Id = 20
--�����ɾ���󣬱�ʶ�е�ֵ�ָ�����ʼֵ

--��ͬ��һ��ɾ��
truncate table Test --��������գ��ָ�����ʼ������ʶ��Ҳ�ָ�
--truncateЧ�ʱ�feleteЧ�ʸ�
insert into Test(Id,MName,Age)
values (1,'aaa',19)