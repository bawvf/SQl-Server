use master --ѡ��Ҫ���������ݿ�
go --����������

--�������ݿ�
create database TestNewBase --���ݿ�����
on primary ( --���ļ���
	name='TestNewBase', --���ݿ���Ҫ�����ļ����߼���
	filename='E:\ѧϰ���乤��\ѧ ϰ\ѧУѧϰ\���ݿ�\���ݿ��ļ�\����ѧϰ\T-SQl\TestNewBase.mdf', --��Ҫ�����ļ���·��������·����
	size=5MB, --���ݿ���Ҫ�ļ���ʼ��С
	filegrowth=1MB --�ļ�������
)
log on ( --������־�ļ�
	name='TestNewBase_log', --���ݿ���־�ļ����߼���
	filename='E:\ѧϰ���乤��\ѧ ϰ\ѧУѧϰ\���ݿ�\���ݿ��ļ�\����ѧϰ\T-SQl\TestNewBase_log.ldf', --��־�ļ���·��������·����
	size=1MB, --���ݿ���־�ļ���ʼ��С
	filegrowth=10% --�ļ�������
)
go

--ɾ�����ݿ�
drop database TestNewBase
go