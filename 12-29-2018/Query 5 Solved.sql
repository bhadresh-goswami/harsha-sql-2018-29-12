


use dbProductManage;
go

--Create--
Alter Procedure InsertCustomerDetails
(
	@FirstName varchar(50),
	@LastName  varchar(50),
	@City varchar(50),
	@State varchar(2),
	@Zip varchar(10),
	@ProductID int,
	@SalePrice money,
	@SaleDate smalldatetime
)
as
begin

	Insert into tblCustomers (FName,LName,City,State,Zip) values (@FirstName,@LastName,@City,@State,@Zip);

	declare @custId int;
	select @custId = SCOPE_IDENTITY()

	insert into tblSales values(@ProductID,@custId,@SalePrice,@SaleDate)

	--print @custId;
	--return @custId;
	select cust.FName,cust.LName,pro.ProductName,sales.SalesPrice, sales.SalesDate
from
tblCustomers as cust 
inner join tblSales as sales on cust.CustomerId = sales.CustomerId
inner join tblProducts as pro on sales.ProductId = pro.ProductId
where cust.CustomerId = @custId; 
end