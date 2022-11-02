use TestBase
go

--创建产品信息表
create table ProductInfos (
	Id int identity(1001,1) primary key not null,    --标识种子，增量
	ProNo varchar(50) not null,    --产品编号
	ProName nvarchar(50) not null,    --产品名称
	TypeId int not null,    --产品类型
	Price decimal(18,2) default 0.00 null,  --产品价格
	ProCount int default 0 null,    --产品数量
	ProRemark nvarchar(max) null
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

--创建表之后进行修改
--不删除原来表的基础上，进行修改
--添加一列 ProRemark
alter table ProductInfos add ProRemark nvarchar(max) null

--删除一列 ProRemark
alter table ProductInfos drop column ProRemark

--修改一列
alter table ProductInfos alter column ProNo nvarchar(50) null

--修改列名 一般慎用
exec sp_rename 'ProductInfos.ProCount','Count','column'

