/* 
=== dervivedTable - The dervived table collects data on one topic

Part B - Build the dervived table first
   
==== TOPICS

* Count the number of albumns and total track minutes and the number of tracks and total track minutes by the Artists
* One part of the query will get the number of tracks and total track minutes,
This is the dervived table, it will be joined to the other table via the common column `ArtistID`
* Aggregation functions to be used for count and sum

   
==== TIPS

* Table alias shorten the typing needed to complete the query
1-3 character alias recommended.
* Column alias help to give meaningful, non conflicting names. 
Good practice is to have table alias used everywhere if used
* Coulmns for join must match in data type and size
* Good practice is that System Generated Primary Key column name be named with `ID` at the end
* Primary Key and Foreign Key matching columns should usew the same name
* `like` used to find a column that contains some string`, note the % indicating any number of characters before/after
* Order by can use either 1. Actual column names, 2. Alias column names, 3. Ordinal position is results list
* Alias column names use lowerUpper naming to identify them as alias
only works because original names are camelback naming.
 
*/


Select 
    AL.ArtistID 
    ,count(AL.AlbumID) as albumCount
    ,count(T.TrackID) as trackCount
    ,sum(T.Milliseconds) / 6000.00 as totalSeconds
from Album AL    

inner Join Track T
on T.AlbumID = AL.AlbumID

group by AL.ArtistID

    