create database test2016
go
use test2016
go
create table Department
(
DeptNo char(2) not null,
DeptName varchar(50) not null,
constraint PK_Department primary key(DeptNo)
)
go
create table Class
(
CNo char(6) not null,
SpecName varchar(50) null,
Num int null check(Num<=30),
CYear char(4) null,
DeptNo char(2) null,
constraint PK_Class primary key (CNo) ,
constraint FK_Class_Department foreign key(DeptNo) references Department(DeptNo) ,
unique(CNo,SpecName)
)
go
create table Student
(
SNo char(8) not null,
SName varchar(50) not null,
SDate date null, 
ClassNo char(6) not null,
constraint PK_Student primary key(SNo),
constraint FK_Student_Class  foreign key (ClassNo) references Class(CNo) ON DELETE CASCADE
)
go
insert into Department values('1','��ѧ')
insert into Department values('2','�����')
insert into Department values('3','��ѧ')
go
insert into Class values('101','΢�����','23','2011','2')
insert into Class values('102','�˹�����','24','2012','2')
insert into Class values('103','�޻���ѧ','19','2011','3')
insert into Class values('104','����ͳ��','20','2012','1')
insert into Class values('105','�л���ѧ','21','2013','3')
insert into Class values('106','�����㷨','23','2011','2')
go
insert into Student values('8101','����','1995-4-5','101')
insert into Student values('8102','����','1996-5-12','103')
insert into Student values('8103','����','1995-5-7','105')
insert into Student values('8104','����','1993-4-15','106')
insert into Student values('8105','����','1992-11-06','102')
insert into Student values('8106','�ư�','1993-12-09','104')
insert into Student values('8107','Ѯ��','1992-5-8','105')
insert into Student values('8108','����','1996-5-7','101')
insert into Student values('8109','���','1995-6-8','103')
insert into Student values('8110','ɳ����','1994-8-9','102')
go