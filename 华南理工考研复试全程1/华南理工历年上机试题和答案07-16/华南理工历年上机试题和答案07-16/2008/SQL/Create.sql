create database test2008
go
use test2008 
go
create table Department
(
DeptID char(6) not null,
DeptName varchar(50) null,
constraint PK_Department primary key(DeptID)
)
go
create table Class
(
ClassNo char(6) not null,
ClassName varchar(50) null,
AllNum int null check(AllNum<=30),
DeptID char(6) null,
constraint PK_Class primary key(ClassNo),
)
go
create table Student
(
SNo char(8) not null,
SName varchar(50) not null,
sex char(2) null,
ClassNo char(6) null,
constraint PK_Student primary key(SNo),
)
go
alter table Student
add constraint FK_Student_Class foreign key(ClassNo) references Class(ClassNo) on delete cascade 
alter table Class
add constraint FK_Class_Department foreign key(DeptID) references Department(DeptID) on delete cascade 
go
insert into Department values('D01','��ѧԺ')
insert into Department values('D02','����ѧԺ')
insert into Department values('D03','����ѧԺ')
insert into Department values('D04','��ϢѧԺ')
insert into Department values('D05','���ѧԺ')
go

insert into Class values('C01','��Ϣ������ѧ','28','D01')
insert into Class values('C02','�����Ϣ','27','D01')
insert into Class values('C03','���һ��','22','D05')
insert into Class values('C04','�������ѧ','26','D04')
insert into Class values('C05','���һ��','28','D02')
insert into Class values('C06','����һ��','16','D03')
insert into Class values('C07','�������','25','D05')
go
insert into Student values('S01','����','��','C01')
insert into Student values('S02','����','Ů','C04')
insert into Student values('S03','����','��','C05')
insert into Student values('S04','����','��','C06')
insert into Student values('S05','����','��','C07')
insert into Student values('S06','����','Ů','C03')
insert into Student values('S07','����','Ů','C02')
insert into Student values('S08','����','��','C04')
insert into Student values('S09','����','Ů','C02')
insert into Student values('S10','����','��','C03')
insert into Student values('S11','����','��','C01')
insert into Student values('S12','����','Ů','C07')
insert into Student values('S13','����','��','C05')
insert into Student values('S14','����','Ů','C06')
insert into Student values('S15','����','��','C02')
insert into Student values('S17','����','Ů','C01')
insert into Student values('S18','����','��','C04')
insert into Student values('S19','����','��','C03')
insert into Student values('S20','����','Ů','C06')
insert into Student values('S21','����','��','C07')
go

Alter table student
ADD column JoinYear char(4) 