/* 
=== joinQuery - Multiple Table join with result restriction

Part B - Add the second table for the Join
   
==== TOPICS

* This query joins multiple table together
   
==== TIPS

* Table alias shorten the typing needed to complete the query
1-2 character alias recommended.
* Column alias help to give meaningful, non conflicting names. 
* Coulmns for join must match in data type and size
* Good practice is that System Generated Primary Key column name be named with `ID` at the end
* Primary Key and Foreign Key matching columns should usew the same name

*/

Select 
   AR.ArtistID
   ,AL.AlbumID
   ,AR.name as artistName  --<1>
   ,AL.AlbumTitle
From Artist AR  --<2>

inner Join Album AL --<2>
on AR.ArtistID = AL.ArtistID  --<3>

where artistName = 'Aerosmith' 