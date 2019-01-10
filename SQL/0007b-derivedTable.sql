/*
=== derivedTable  List of tracks on the invoice numbers for orders $5 or more for year 2018

Part B - List of tracks on the 2018 orders $5 or larger.  (*Top Order Tracks* list*)
   
==== Topics 

* Between function
* Cast for formatting
* Column Alias, rename a column
* Comments, information or debugging
* Date functions
* Derived Table (Sub-Query)
* Join objects (Table, View, Derived Table) together
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names
*/

Select Distinct     --<5>
    IL.TrackID
from invoiceline IL   

inner join
	( -- 2018 Invoices $5 or more    --<1>
	select
		I.InvoiceID	
	from Invoice I 
    where I.InvoiceDate between date '2018-01-01' and date '2018-12-31' --<2><3>
      and I.total >= 5.00
	) as RI  --<4>
on RI.InvoiceID = IL.InvoiceID