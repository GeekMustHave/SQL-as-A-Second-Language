/* 
=== dervivedTable - The dervived table collects data on one topic

Part A - Build the query that will become one of the dervivied tables
   
==== TOPICS

* Count the number of albums and total track minutes by the Artists
* Aggregation functions to be used for count and sum

   
==== TIPS

* Table alias shorten the typing needed to complete the query
1-3 character alias recommended.
* Column alias help to give meaningful, non conflicting names. 
Good practice is to have table alias used everywhere if used.
Use the same alias across all queries.
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
    ,count(T.TrackID) as trackCount
    ,sum(T.Milliseconds) / 6000.00 as totalTrackMinutes --<1>
from Track T

inner join Album AL  --<2>
on T.AlbumID = AL.AlbumID    

group by AL.ArtistID

    