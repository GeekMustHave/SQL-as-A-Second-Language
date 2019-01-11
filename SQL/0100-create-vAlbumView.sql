/*   Create vAlbums with all required parts

=== Create View - Create a view for comprehensive album information

NOTE: Your account must have `perm space` assigned to it to create a view

* Need to join the following tables
** Album - Artist
** Album - Track
** Track - Genre
** Track - Media Type
   
==== Topics 

* Calculated columns
* Column Alias, rename a column
* Comments, information or debugging
* Join objects (Table, View, Derived Table) together
* Table alias, standardize and simplify table/view names
* Teradata Specific syntax
*/


Create view vAlbum  --<1>
-- Update View vAlbum   --<2>

as

Select
    AL.AlbumId
    ,AL.AlbumTitle
    ,AR.ArtistID
    ,AR.Name as artistName  --<3>
    ,T.TrackId
    ,T.Name as titleName
    ,T.Composer
    ,T.Milliseconds
    ,T.Milliseconds / 60000.00 as minutes -- Divide milliseconds by 60,000 for minutes --<4>
    ,T.SizeBytes
    ,T.SizeBytes / 1048576.00 as mbSize  -- Megabyte 2^20 1024 x 1024 or 1,048,567 --<5>
    ,G.GenreId
    ,G.Name as genreName
    ,MT.MediaTypeID
    ,MT.Name as mediaTypeName
from Album AL    --<6>

INNER JOIN Artist AR  -- Artist name --<6>
on AR.ArtistID = AL.ArtistID 

INNER JOIN Track T -- All tacks info  --<6>
on T.AlbumID = AL.AlbumId

INNER JOIN Genre G -- Genre for each track
on G.GenreId = T.GenreId  --<6>

INNER JOIN MediaType MT -- MediaType for each track
on MT.MediaTypeId = T.MediaTypeId --<6>






