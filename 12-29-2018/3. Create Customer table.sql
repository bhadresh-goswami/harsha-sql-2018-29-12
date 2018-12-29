


use dbProductManage;
go


create table tblCustomers
(
	CustomerId int primary key identity,
	FName varchar(50),
	LName varchar(50),
	City varchar(50),
	State Varchar(2),
	Zip varchar(10)
)