/* 
=== joinQuery - Multiple Table join with result restriction

Part C - Add the third table and composer restriction
   
==== Topics 

* Column Alias, rename a column
* Join objects (Table, View, Derived Table) together
* Like %Search% similar to `contains`
* Order by,  also known as sorting
* Where, results filter or restriction
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