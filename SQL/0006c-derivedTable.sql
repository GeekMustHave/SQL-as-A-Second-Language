/* 
=== derivedTable - The derived table collects data on one topic (Albums)

Part C - Build the main query and include the two derived tables
   
==== TOPICS

* Join multiple tables 
* Aggregation functions to be used for count
* Table and Column Alias

=== ASSUMPTIONS

* Every Artist has at least one album
   
==== TIPS

* Table alias shorten the typing needed to complete the query
1-3 character alias recommended.
* Column alias help to give meaningful, non conflicting names. 
Good practice is to have table alias used everywhere if used.
Use the same alias across all queries.
* Coulmns for join must match in data type and size
* Good practice is that System Generated Primary Key column name be named with `ID` at the end
* Good practice, alias column names use lowerUpper naming to identify them as alias (albumCount)
* Primary Key and Foreign Key matching columns should usew the same name
 
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