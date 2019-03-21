Create database emp
go
use emp
go
create table Employee
(
EmpID char(6) not null,
EmpName varchar(50) not null,
EPlace varchar(50) not null,
constraint PK_Employee primary key (EmpID)
)
go
create table Company
(
CID char(6) not null,
CName char(6) not null,
CPlace varchar(50) not null,
constraint PK_Company primary key (CID)
)
go
Create table Works
(
EmpID char(6) not null,
CID char(6) not null,
Salary Numeric(8,2) default (0),
constraint PK_Works primary key (EmpID,CID),
constraint FK_Works_Employee foreign key(EmpID) references Employee(EmpID),
constraint FK_Works_Company foreign key(CID) references Company(CID)
)
go
insert into Employee values('E01','����','����')
insert into Employee values('E02','����','�Ϻ�')
insert into Employee values('E03','����','����')
insert into Employee values('E04','����','����')
insert into Employee values('E05','Ѵ��','�人')
insert into Employee values('E06','����','�Ͼ�')
insert into Employee values('E07','ҩ��','����')
insert into Employee values('E08','ʱʱ','����')
go
insert into Company values('C01','��Ѷ','����')
insert into Company values('C02','����','����')
insert into Company values('C03','�ٶ�','����')
go
insert into Works values('E01','C01','8000');
insert into Works values('E02','C02','7000');
insert into Works values('E03','C03','5000');
insert into Works values('E04','C01','10000');
insert into Works values('E05','C02','9000');
insert into Works values('E06','C03','8000');
insert into Works values('E07','C01','13000');
insert into Works values('E08','C01','12000');
insert into Works values('E01','C02','9000');
go
