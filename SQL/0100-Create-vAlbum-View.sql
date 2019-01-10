/*   Create vAlbums with all required parts

=== derivedTable - Create a view for comprehensive album information

* Need to join the following tables
** Album - Artist
** Album - Track
** Track - Genre
** Track - Media Type
   
==== TOPICS

* Table alias
* Column Alias
* Join objects (Table, View, Derived Table) together

   
==== TIPS

.Table Alias
* Table alias shorten the typing needed to complete the query, 
1-3 character alias recommended.
* Good practice is to have table alias used everywhere in the query.

.Column Alias
* Column alias help to give meaningful, non conflicting names. 
* Good practice, alias column names use lowerUpper naming 
to identify them as alias (albumCount)
* Good practic, Use the same alias across all queries.

.Naming practice
* Good practice, System Generated Primary Index column name be 
include with `ID` suffix.
* Good practice, Primary Key and Foreign Key join columns 
should use the same name.

.Join requirements
* Coulmns for join must match in data type and size.
 
*/


Create view vAlbum
as
Select
    AL.AlbumId
    ,AL.AlbumTitle
    ,AR.ArtistID
    ,AR.Name as artistName
    ,T.TrackId
    ,T.Name as titleName
    ,T.Composer
    ,T.Milliseconds
    ,T.Milliseconds / 60000.00 as minutes
    ,T.SizeBytes
    ,T.SizeBytes / 1048576.00 as mbSize  -- Megabyte 2^20 1024 x 1024 or 1,048,567
    ,G.GenreId
    ,G.Name as genreName
    ,MT.MediaTypeID
    ,MT.Name as mediaTypeName
from Album AL    

INNER JOIN Artist AR  -- Artist name
on AR.ArtistID = AL.ArtistID 

INNER JOIN Track T -- All tacks info
on T.AlbumID = AL.AlbumId

INNER JOIN Genre G -- Genre for each track
on G.GenreId = T.GenreId

INNER JOIN MediaType MT -- MediaType for each track
on MT.MediaTypeId = T.MediaTypeId






