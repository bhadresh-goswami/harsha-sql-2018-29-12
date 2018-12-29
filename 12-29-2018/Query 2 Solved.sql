
use dbProductManage;
go

Select CustomerId,FName,LName from tblCustomers 
where  CustomerId not in 
(
	Select CustomerId from tblSales
)