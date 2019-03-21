Create  database test2013
go
use test2013
go
create table TEACHERS
(
TNo char(6) not null,
TNmae varchar(50) not null,
TSex char(2) not null,
constraint PK_TEACHERS primary key(TNo)
)
go
Create table COURSES
(
CNo char(6) not null,
CName varchar(50) not null,
CTime int not null,
constraint PK_COURSES primary key (CNo)
)
go
Create table WORKS
(
TNo char(6) not null,
CNo char(6) not null,
WYear char(4) not null,
Term char(2) not null,
constraint PK_WORKS primary key (TNo,CNo),
constraint FK_WORKS_TEACHERS foreign key(TNo) references TEACHERS(TNo),
constraint FK_WORKS_COURSES foreign key(CNo) references COURSES(CNo)
)
go
insert into TEACHERS values('T01','����','��')
insert into TEACHERS values('T02','����','Ů')
insert into TEACHERS values('T03','����','��')
insert into TEACHERS values('T04','����','Ů')
go
insert into Courses values('C01','���ݽṹ','64')
insert into Courses values('C02','�����ԭ��','64')
insert into Courses values('C03','���������','48')
insert into Courses values('C04','���ݿ�','48')
go
insert into Works values('T01','C01','2010','��')
insert into Works values('T01','C02','2010','��')
insert into Works values('T02','C01','2011','��')
insert into Works values('T03','C01','2011','��')
insert into Works values('T04','C02','2011','��')
insert into Works values('T04','C03','2010','��')
insert into Works values('T04','C04','2012','��')
go