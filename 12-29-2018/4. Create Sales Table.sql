
use dbProductManage;
go

create table tblSales
(
	SalesId int primary key identity,
	ProductId int foreign key references tblProducts(ProductId),
	CustomerId int foreign key references tblCustomers(CustomerId),
	SalesPrice money,
	SalesDate smalldatetime
)