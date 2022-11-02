use TestBase
go

--������Ʒ��Ϣ��
create table ProductInfos (
	Id int identity(1001,1) primary key not null,    --��ʶ���ӣ�����
	ProNo varchar(50) not null,    --��Ʒ���
	ProName nvarchar(50) not null,    --��Ʒ����
	TypeId int not null,    --��Ʒ����
	Price decimal(18,2) default 0.00 null,  --��Ʒ�۸�
	ProCount int default 0 null,    --��Ʒ����
	ProRemark nvarchar(max) null
)
go

--������Ʒ���ͱ�
create table ProductType (
	TypeId int identity(1,1) primary key not null,    --��Ʒ���
	TypeName nvarchar(20) not null
)
go

--ɾ����
drop table ProductInfos
go

--������֮������޸�
--��ɾ��ԭ����Ļ����ϣ������޸�
--���һ�� ProRemark
alter table ProductInfos add ProRemark nvarchar(max) null

--ɾ��һ�� ProRemark
alter table ProductInfos drop column ProRemark

--�޸�һ��
alter table ProductInfos alter column ProNo nvarchar(50) null

--�޸����� һ������
exec sp_rename 'ProductInfos.ProCount','Count','column'

