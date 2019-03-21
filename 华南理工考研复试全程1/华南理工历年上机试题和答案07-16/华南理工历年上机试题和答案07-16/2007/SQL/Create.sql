create database test2007;
go
use test2007
go
create table Employee
(
EmpID char(6) not null,
EmpName varchar(50) null,
Salary int null,
DeptID char(6) not null,
constraint PK_Employee primary key(EmpID)
)
go
create table Department
(
DeptID char(6) not null,
DeptName varchar(50) null,
EmpID char(6) not null,
constraint PK_Department primary key(DeptID)
)
go

create trigger Update_Employee_Salary
on Employee
for Update
AS
if UPDATE(Salary)
print '�������޸�Salary��ֵ'
rollback

--��������
insert into Employee values('E01','����','5000','D01')
insert into Employee values('E02','����','5700','D01')
insert into Employee values('E03','����','8000','D02')
insert into Employee values('E04','����','10000','D03')
insert into Employee values('E05','����','8500','D04')
insert into Employee values('E06','����','6000','D01')
go
insert into Department values('D01','��ҵ��','E01')
insert into Department values('D02','��沿','E03')
insert into Department values('D03','�з���','E04')
insert into Department values('D04','�г���','E05')
go

