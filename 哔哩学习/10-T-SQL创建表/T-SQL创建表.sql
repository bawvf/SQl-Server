--数据定义语言 DDL
use TestBase
go

--创建产品信息表
create table ProductInfos (
	Id int identity(1001,1) primary key not null,    --标识种子，增量
	ProNo varchar(50) not null,    --产品编号
	ProName nvarchar(50) not null,    --产品名称
	TypeId int not null,    --产品类型
	Price decimal(18,2) default 0.00 null,  --产品价格
	ProCount int default 0 null    --产品数量
)
go

--创建产品类型表
create table ProductType (
	TypeId int identity(1,1) primary key not null,    --产品编号
	TypeName nvarchar(20) not null
)
go

--删除表
drop table ProductInfos
go