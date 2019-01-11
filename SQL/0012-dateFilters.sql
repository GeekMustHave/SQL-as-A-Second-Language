/*

dateFilters  Date filters and OLAP function

==== Topics 

* Column Alias, rename a column
* Comments, information or debugging
* Date functions
* OLAP function basic (Csum, Rank, Cube)
* Order by,  also known as sorting
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names
*/

select
	I.InvoiceDate
	,extract(month from I.InvoiceDate) as invoiceMonth --<1><2>
	,extract(day from I.InvoiceDate) as invoiceDay --<2>
	,I.CustomerID
	,I.Total as invoiceTotal  --<1>
	,csum(invoiceTotal, I.InvoiceDate) as cumulativeSum --<3>
from Invoice I --<4>

where
    extract(month from I.InvoiceDate) in (9,10,11,12)   --<2>
and extract(day from I.InvoiceDate) in (1,2,3,4,5,6,7,8)   --<2>
and extract(year from I.InvoiceDate) = 2018  --<2>
order by 
	I.InvoiceDate 