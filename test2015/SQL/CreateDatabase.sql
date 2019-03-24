create database test2015
go
use test2015

create table EMPLOYEE(
			EmpNo char(6) not null,
			EmpName varchar(20) not null,
			EmpSex char(2) null,
			EmpAge int null
			constraint PK_EMPLOYEE primary key(EmpNo)

)
go

create table COMPANY(
			CmpNo char(6) not null,
			CmpName varchar(20) null
			constraint PK_COMPANY primary key(CmpNo)
)
go

create table WORKS(
			EmpNo char(6) not null,
			CmpNo char(6) not null,
			Salary numeric(8,2) default(0)
			constraint PK_WORKS primary key(EmpNo,CmpNo),
			constraint FK_WORKS_EMPLOYEE foreign key(EmpNo) references EMPLOYEE(EmpNo) on DELETE CASCADE on UPDATE CASCADE,
			constraint FK_WORKS_COMPANY foreign key(CmpNo) references COMPANY(CmpNo) on DELETE CASCADE on UPDATE CASCADE
)
go

insert into EMPLOYEE values('E01','����','Ů','32')
insert into EMPLOYEE values('E02','����','��','28')
insert into EMPLOYEE values('E03','����','Ů','42')
insert into EMPLOYEE values('E04','����','��','37')
insert into EMPLOYEE values('E05','����','��','51')
go

insert into COMPANY values('C01','����Ƽ�')
insert into COMPANY values('C02','����Ƽ�')
insert into COMPANY values('C03','δ���Ƽ�')
go

insert into WORKS values('E01','C01','3000')
insert into WORKS values('E01','C02','4000')
insert into WORKS values('E02','C02','5000')
insert into WORKS values('E02','C03','2500')
insert into WORKS values('E03','C01','3500')
insert into WORKS values('E04','C02','3000')
insert into WORKS values('E05','C03','2000')