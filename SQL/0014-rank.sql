
   



select
   gc.genreName
   ,gc.saleCount
   ,rank(gc.saleCount) as ranking  --<1>
from
(
	SELECT	
		g.name as genreName
		,count(il.InvoiceLineID) As saleCount
	from InvoiceLine IL
	
	inner join Track T
	on T.trackID = il.TrackID
	
	inner join Genre G
	on G.GenreID = T.GenreID
	
	group by 
		1
) as GC  -- genreCounts