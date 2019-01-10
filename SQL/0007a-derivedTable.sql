/*
=== derivedTable  List of invoice numbers for orders $5 or more

Part A - Which invoices have a totoal of $5 or more.

==== Topics 

* Column Alias, rename a column
* Comments, information or debugging
* Date functions
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names
*/

select 
--  i.customerid  --<1>
  I.InvoiceID
--  ,i.InvoiceDate  --<1>
--  ,i.total  --<1>
from Invoice I 

where I.InvoiceDate between date '2018-01-01' and date '2018-12-31' --<2> <3>
and I.total >= 5.00