

use dbProductManage;
go

select cust.FName,cust.LName,sales.SalesPrice, pro.RecPrice, Abs(pro.RecPrice - sales.SalesPrice) as 'RecPrice-SalesPrice'
from
tblCustomers as cust 
inner join tblSales as sales on cust.CustomerId = sales.CustomerId
inner join tblProducts as pro on sales.ProductId = pro.ProductId
