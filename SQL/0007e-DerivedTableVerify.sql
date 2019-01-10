select
  IL.trackid
  ,t.name as trackName
  ,count(IL.TrackID) as trackCount
from InvoiceLine IL

inner join track t
on t.trackID = il.trackID


Group by 
	il.trackID
	,t.name
	
having trackCount > 1