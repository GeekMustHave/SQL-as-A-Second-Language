/*
=== derivedTable  List of invoices that share a track with another list

Part C - List of invoices that share a track from the 2018 orders $5 or larger (*Top Order Tracks* list*)
   
==== TOPICS

* Distinct to elminate duplicates
* Join multiple tables 
* Derived table or sub-query
* Aggregation functions to be used for count
* Table Alias
* Between function
* Date representation

*/

Select distinct  --<1>
    IL.InvoiceID    
from InvoiceLine IL

inner join 
	( -- Track list for 2018 invoice $5 or more  --<2>
	Select DISTINCT  --<1>
	    IL.TrackID
	from invoiceline IL   
	
	inner join
		( -- 2018 Invoices $5 or more   --<3>
		select
			I.InvoiceID	
		from Invoice I 
	    where I.InvoiceDate between date '2018-01-01' and date '2018-12-31'  --<7><8>
	      and I.total >= 5.00
		) as RI  --<4>
	on RI.InvoiceID = IL.InvoiceID
	
	) as TL  --<5>
on TL.TrackID = IL.TrackID	--<6>
	



    