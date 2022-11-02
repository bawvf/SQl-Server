--数据定义语言 DDL
use TestBase
go

--删除表
drop table ProductInfos
go

--创建产品信息表
create table ProductInfos (
	Id int identity(1001,1) not null,    --标识种子，增量
	ProNo varchar(50) not null,    --产品编号
	ProName nvarchar(20) not null,    --产品名称
	TypeId int not null,    --产品类型
	Price decimal(18,2) not null,  --产品价格
	ProCount int null    --产品数量
)
go

--在创建表完成后再创建约束

--主键 Id
alter table ProductInfos add constraint PK_ProductInfos primary key(Id)

--外键 TypeId
alter table ProductInfos add constraint FK_ProductInfos foreign key(TypeId) references ProductType(TypeId)

--unique约束 ProNo
alter table ProductInfos add constraint IX_ProductInfos unique(ProNo)

--check约束
alter table ProductInfos add constraint CK_ProductInfos_Price check(Price<10000) 

--default约束
alter table ProductInfos add constraint DF_ProductInfos default(0) for ProCount
