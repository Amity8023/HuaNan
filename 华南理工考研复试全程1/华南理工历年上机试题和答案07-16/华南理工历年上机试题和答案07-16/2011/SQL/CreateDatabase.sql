Create database test2011;
go
use test2011
go
create table Buses
(
BusID char(8) not null,
Supplier varchar(50) not null,
constraint PK_Buses primary key (BusID)
)
go
create table Driver
(
EmpID char(8) not null,
DName varchar(50) not null,
Sex char(2) check(Sex='��' or Sex='Ů'),
Age int check(Age>20 and Age<60),
Tel varchar(20) null,
Pwd varchar(50) null,
constraint PK_Driver primary key(EmpID)
)
go
create table Lines
(
LineID char(8) not null,
StartP varchar(50) not null,
EndP varchar(50) not null,
Distance int null,
constraint PK_Lines primary key(LineID)
)
go
Create table Timetable
(
LineID char(8) not null,
EmpID char(8) not null,
BusID char(8) not null,
StartTime smalldatetime null,
constraint PK_Timetable primary key(LineID,EmpID,BusID),
constraint FK_Timetable_Buses foreign key(BusID) references Buses(BusID),
constraint FK_Timetable_Driver foreign key(EmpID) references Driver(EmpID),
constraint FK_Timetable_Lines foreign key(LineID) references Lines(LineID),
)
go
insert into Buses values('A112','�����ִ�')
insert into Buses values('A021','�ձ�����')
insert into Buses values('A213','��������')
insert into Buses values('A345','�Ϻ�����')
go
insert into Driver values('E001','����','��','22','123','122')
insert into Driver values('E020','����','Ů','32','111','111')
insert into Driver values('E212','����','��','23','123','222')
go

insert into Lines values('1','����','��ʤΧ','20')
insert into Lines values('2','������·','�ʹ�','30')
insert into Lines values('3','����','��ѧ����','10')
go

insert into Timetable values('1','E001','A112','2011-3-26 10:13:10')
insert into Timetable values('2','E020','A345','2011-3-22 11:10:22')
insert into Timetable values('3','E212','A213','2011-3-26 08:15:1')
go