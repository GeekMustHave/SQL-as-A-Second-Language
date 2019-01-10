/* 
=== joinQuery - Multiple Table join with result restriction
   
==== Topics 

* Column Alias, rename a column
* OLAP function
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names
*/

Select 
   AR.ArtistID
   ,AR.name as artistName  --<1>
From Artist AR  --<2>
where artistName = 'Aerosmith' 