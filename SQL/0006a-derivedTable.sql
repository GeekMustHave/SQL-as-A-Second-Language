/* 
=== derivedTable - The derived table collects data on one topic (Albums)

Part A - Build the query that will become one of the derived tables
   
==== TOPICS

* Join multiple tables 
* Aggregation functions to be used for count
* Table and Column Alias
   
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


select
    AR.ArtistID
	,count(AL.AlbumID) as albumCount  --<1>
from Album AL

INNER JOIN Artist AR
on AR.ArtistID = AL.ArtistID

Group by AR.ArtistID  --<2>

    