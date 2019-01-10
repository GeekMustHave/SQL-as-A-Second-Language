/* 
=== joinQuery - Multiple Table join with result restriction

Part B - Add the second table for the Join
   
==== Topics 

* Column Alias, rename a column
* Derived Table (Sub-Query)
* Join objects (Table, View, Derived Table) together
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names
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