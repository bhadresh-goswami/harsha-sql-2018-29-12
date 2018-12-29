
use dbProductManage;
go



select avg(sales.SalesPrice) as AVG_Sales_Price,pro.Category
from
 tblSales as sales
inner join tblProducts as pro on sales.ProductId = pro.ProductId
group by pro.Category
