
use dbProductManage;
go



select avg(sales.SalesPrice) as AVG_Sales_Price,pro.Category
from
tblSales as sales
inner join tblProducts as pro on sales.ProductId = pro.ProductId
group by pro.Category

--create view selectCustomerId  as
--Select cust.CustomerId, count(sales.SalesId) as counted from
--tblCustomers as cust 
--inner join tblSales as sales on cust.CustomerId = sales.CustomerId
--inner join tblProducts as pro on sales.ProductId = pro.ProductId
--group by cust.CustomerId having count(sales.SalesId)>=2

select pro.Category,AVG(sales.SalesPrice),sales.CustomerId,count(sales.SalesId) from
tblProducts as pro inner join tblSales as sales on pro.ProductId = sales.ProductId

group by sales.CustomerId,pro.Category having count(sales.SalesId)>=2

