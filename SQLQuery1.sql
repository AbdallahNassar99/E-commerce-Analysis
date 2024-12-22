


select CONCAT(1,'-', MONTH( l.Order_Date),'-',YEAR( l.Order_Date)) as 'Month of Order Date' , sum(o.Amount) as Target ,o.Category
from [List of Orders] l
inner join [Order Details] o
on l.Order_ID=o.Order_ID
group by o.Category , MONTH( l.Order_Date) , YEAR( l.Order_Date),o.Category
order by Category desc ,YEAR( l.Order_Date), MONTH( l.Order_Date) 



 select l.City,count(o.Order_ID)
 from [List of Orders] l 
 inner join [Order Details] o
 on l.Order_ID = o.Order_ID
 group by l.City
 order by count(o.Order_ID) desc

  select l.CustomerName,count(o.Order_ID)
 from [List of Orders] l 
 inner join [Order Details] o
 on l.Order_ID = o.Order_ID
 group by l.CustomerName
 order by count(o.Order_ID) desc