/* 
=== derivedTable - Gets the list of artists and album counts

Part A - Gets the list of artists with album count
this will become one of the derived tables in the final query
   
==== Topics 

* Aggregates (Count, Sum, Min, Max, Avg, etc)
* Column Alias, rename a column
* Group by, required for non-aggregate columns
* Join objects (Table, View, Derived Table) together
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names
*/


select
    AR.ArtistID
	,count(AL.AlbumID) as albumCount  --<1><2>
from Album AL --<3>

INNER JOIN Artist AR  --<3>
on AR.ArtistID = AL.ArtistID --<4>

Group by AR.ArtistID  --<5>

    