--���ݶ������� DDL
use TestBase
go

--ɾ����
drop table ProductInfos
go

--������Ʒ��Ϣ��
create table ProductInfos (
	Id int identity(1001,1) not null,    --��ʶ���ӣ�����
	ProNo varchar(50) not null,    --��Ʒ���
	ProName nvarchar(20) not null,    --��Ʒ����
	TypeId int not null,    --��Ʒ����
	Price decimal(18,2) not null,  --��Ʒ�۸�
	ProCount int null    --��Ʒ����
)
go

--�ڴ�������ɺ��ٴ���Լ��

--���� Id
alter table ProductInfos add constraint PK_ProductInfos primary key(Id)

--��� TypeId
alter table ProductInfos add constraint FK_ProductInfos foreign key(TypeId) references ProductType(TypeId)

--uniqueԼ�� ProNo
alter table ProductInfos add constraint IX_ProductInfos unique(ProNo)

--checkԼ��
alter table ProductInfos add constraint CK_ProductInfos_Price check(Price<10000) 

--defaultԼ��
alter table ProductInfos add constraint DF_ProductInfos default(0) for ProCount
