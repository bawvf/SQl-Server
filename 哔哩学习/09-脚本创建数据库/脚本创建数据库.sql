use master --选择要操作的数据库
go --批处理命令

--创建数据库
create database TestNewBase --数据库名称
on primary ( --主文件组
	name='TestNewBase', --数据库主要数据文件的逻辑名
	filename='E:\学习及其工作\学 习\学校学习\数据库\数据库文件\哔哩学习\T-SQl\TestNewBase.mdf', --主要数据文件的路径（绝对路径）
	size=5MB, --数据库主要文件初始大小
	filegrowth=1MB --文件的增量
)
log on ( --创建日志文件
	name='TestNewBase_log', --数据库日志文件的逻辑名
	filename='E:\学习及其工作\学 习\学校学习\数据库\数据库文件\哔哩学习\T-SQl\TestNewBase_log.ldf', --日志文件的路径（绝对路径）
	size=1MB, --数据库日志文件初始大小
	filegrowth=10% --文件的增量
)
go

--删除数据库
drop database TestNewBase
go