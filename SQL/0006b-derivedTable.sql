/* 
=== derivedTable - The derived table collects data on one topic (Tracks)

Part B -Build the query that will become one of the derived tables
   
==== Topics 

* Aggregates (Count, Sum, Min, Max, Avg, etc)
* Cast for formatting
* Column Alias, rename a column
* Group by, required for non-aggregate columns
* Join objects (Table, View, Derived Table) together
* Table alias, standardize and simplify table/view names
*/


Select 
    AL.ArtistID 
    ,count(T.TrackID) as trackCount
    ,sum(T.Milliseconds) / 60000.00 as totalMinutes  --<1>
    ,avg(T.Milliseconds) / 60000.00 as avgMinutes    --<2>
from Album AL    

inner Join Track T
on T.AlbumID = AL.AlbumID

group by AL.ArtistID

    