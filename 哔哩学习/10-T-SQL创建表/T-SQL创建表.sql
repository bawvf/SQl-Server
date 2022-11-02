--���ݶ������� DDL
use TestBase
go

--������Ʒ��Ϣ��
create table ProductInfos (
	Id int identity(1001,1) primary key not null,    --��ʶ���ӣ�����
	ProNo varchar(50) not null,    --��Ʒ���
	ProName nvarchar(50) not null,    --��Ʒ����
	TypeId int not null,    --��Ʒ����
	Price decimal(18,2) default 0.00 null,  --��Ʒ�۸�
	ProCount int default 0 null    --��Ʒ����
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