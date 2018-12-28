/* 
=== joinQuery - Multiple Table join with result restriction

Part C - Add the third table and composer restriction
   
==== TOPICS

* List of all the `Aerosmith` tracks that `Joe Perry` was one of the cpmposers
* This query joins multiple tables together
* Primary and Foreign keys are system generated and always exist
   
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
   AR.ArtistID
   ,AL.AlbumID
   ,T.TrackID
   ,AR.name as artistName  --<1>
   ,AL.AlbumTitle
   ,T.Name as trackName    --<1>
   ,T.Composer
From Artist AR  --<2>

inner Join Album AL --<2>
on AR.ArtistID = AL.ArtistID  --<3>

inner join Track T
on AL.AlbumID = T.AlbumID

where AR.Name = 'Aerosmith' 
  and T.Composer like '%Joe Perry%'  --<4>

order by AL.AlbumTitle
         ,trackName  --<5>
-- order by 5,6 --<6>