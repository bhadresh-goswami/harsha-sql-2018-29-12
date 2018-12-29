

use dbProductManage;
go


create table tblProducts
(
	ProductId int primary key identity,
	ProductName varchar(20),
	RecPrice money,
	Category varchar(10)
)