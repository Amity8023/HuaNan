Create database test2014
go
use test2014
go
create table TEACHERS
(
TNo char(6) not null,
TName varchar(50) not null,
Dept varchar(50) null,
ReNo char(6) not null,
constraint PK_TEACHERS primary key (TNo)
)
go
Create table REMUNERATIONS
(
ReNo char(6) not null,
Salary Numeric(8,2) not null,
Constraint PK_REMUNERATIONS primary key(ReNo)
)
go
create table COURSES
(
CNo char(6) not null,
CName varchar(50) not null,
CTime int null,
TNo char(6) not null,
constraint PK_COURSES primary key(CNo),
constraint FK_COURSES_TEACHERS foreign key(TNo) references TEACHERS(TNo)
)
go
insert into TEACHERS values('T01','����','�����','Z01')
insert into TEACHERS values('T02','����','����','Z02')
insert into TEACHERS values('T03','����','��ѧ','Z02')
insert into TEACHERS values('T04','����','�����','Z03')
go
insert into REMUNERATIONS values('Z01','80')
insert into REMUNERATIONS values('Z02','60')
insert into REMUNERATIONS values('Z03','40')
go
insert into COURSES values('C01','���ݿ�','64','T01')
insert into COURSES values('C02','��ѧ����','56','T02')
insert into COURSES values('C03','�ߵ���ѧ','80','T03')
insert into COURSES values('C04','����ϵͳ','60','T04')
insert into COURSES values('C05','���Դ���','50','T03')
insert into COURSES values('C06','΢����','48','T03')
insert into COURSES values('C07','���ݽṹ','60','T04')
go
