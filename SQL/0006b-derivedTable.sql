/* 
=== derivedTable - The derived table collects data on one topic (Tracks)

Part B -Build the query that will become one of the derived tables
   
==== TOPICS

* Count the number of tracks, total minutes, and average minutes per track
* Aggregation functions to be used for count and avg

   
==== TIPS

* Table alias shorten the typing needed to complete the query
1-3 character alias recommended.
* Column alias help to give meaningful, non conflicting names. 
Good practice is to have table alias used everywhere if used
* Coulmns for join must match in data type and size
* Good practice is that System Generated Primary Key column name be named with `ID` at the end
* Primary Key and Foreign Key matching columns should usew the same name
* Alias column names use lowerUpper naming to identify them as alias (trackCount, totalMinutes, avgMinutes)
 
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

    