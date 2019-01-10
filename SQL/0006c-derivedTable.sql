/* 
=== derivedTable - The derived table collects data on one topic (Albums)

Part C - Build the main query and include the two derived tables
   
==== Topics 

* Aggregates (Count, Sum, Min, Max, Avg, etc)
* Column Alias, rename a column
* Derived Table (Sub-Query)
* Group by, required for non-aggregate columns
* Join objects (Table, View, Derived Table) together
* Order by,  also known as sorting
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names

=== Assumptions

* Every Artist has at least one album 
*/

Select 
	AR.ArtistID
	,AR.Name as artistName
	,AC.albumCount   --<1>
	,TC.totalMinutes
	,cast(TC.avgMinutes as decimal(5,2))  as averageMinutes  --<2>
from Artist AR

inner join
	(                   --<3>
	select
	    AR.ArtistID
		,count(AL.AlbumID) as albumCount  --<1>
	from Album AL
	
	INNER JOIN Artist AR
	on AR.ArtistID = AL.ArtistID
	
	Group by AR.ArtistID
	) as AC               --<4>
on AC.ArtistID = AR.ArtistID

inner Join
	(                     --<3>
	Select 
	    AL.ArtistID 
	    ,count(T.TrackID) as trackCount
	    ,sum(T.Milliseconds) / 60000.00 as totalMinutes  --<5>
	    ,avg(T.Milliseconds) / 60000.00 as avgMinutes    --<6>
	from Album AL    
	
	inner Join Track T
	on T.AlbumID = AL.AlbumID
	
	group by AL.ArtistID
	) as TC                --<4>
on TC.ArtistID = AR.ArtistID

Order by artistName	