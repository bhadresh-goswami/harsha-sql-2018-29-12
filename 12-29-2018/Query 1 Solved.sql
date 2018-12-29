

use dbProductManage;
go

select cust.FName,cust.LName,pro.ProductName,sales.SalesPrice, sales.SalesDate
from
tblCustomers as cust 
inner join tblSales as sales on cust.CustomerId = sales.CustomerId
inner join tblProducts as pro on sales.ProductId = pro.ProductId

where sales.SalesDate between '10-01-2005' and '10-31-2005'