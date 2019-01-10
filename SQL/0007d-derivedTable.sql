/*

derivedTable  List of album/track info for other tracks that match 2018 order $5 or more track list

Part D - Add Album and Track information 

==== Topics 

* Between function
* Column Alias, rename a column
* Comments, information or debugging
* Date functions
* Derived Table (Sub-Query)
* Group by, required for non-aggregate columns
* Having, filter for aggregate column
* Join objects (Table, View, Derived Table) together
* Order by,  also known as sorting
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names
*/

Select
	IL.TrackID	
	,T.Name as trackName   --<1>
	,A.AlbumID
	,A.AlbumTitle
	,count(T.TrackID) as trackCount  --<2>
from InvoiceLine IL

inner Join Track T
on T.TrackID = IL.TrackID

inner join Album A
on A.AlbumID = T.AlbumID

inner join
	( -- Any invoice with tracks from the 2018 invoice $5 or more track list  --<3>
	Select distinct   --<4>
	    IL.InvoiceID    
	from InvoiceLine IL
	
	inner join 
		( -- Track list for 2018 invoice $5 or more  --<5>
		Select 
		    IL.TrackID
		from invoiceline IL   
		
		inner join
			( -- 2018 Invoices $5 or more  --<6>
			select DISTINCT  --<4>
				I.InvoiceID	
			from Invoice I 
		    where I.InvoiceDate between date '2018-01-01' and date '2018-12-31' --<7><8>
		      and I.total >= 5.00
			) as RI  --<9>
		on RI.InvoiceID = IL.InvoiceID
		
		) TL --<10>
	on TL.TrackID = IL.TrackID	
	
	) as SI --<11>
on SI.InvoiceID = IL.InvoiceID 	

-- Syntax below is related to the top most query

group by --<12>
	IL.TrackID
	,T.Name
	,A.AlbumID
	,A.AlbumTitle
	
Order by 
	trackCount Desc  --<13>
	,trackname       --<14>
	
Having trackCount >= 2	--<15>