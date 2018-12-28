/* 
=== tableCounts - Count rows in all Chinook tables 
   
==== TOPICS

* Aggragate function count.
* UNION multiple queries.
* Sorting aka order by.
   
==== TIPS

* Use single quote (') to denote text.
* Use doble-quotes for renaming objects.
* Indent and one column per row.
* Put commas at the begining of the 2nd column.
* UNION allows joining of multiple queries, same number and data type of column.
* First query in union determine sizes and names of columns.
* Start small and build on to query.
* Order by can be by the ordinal number of the column
  (Column 1 is tableName, Column 2 is Rows)
*/

Select 
	'Album          ' as tableName   --<1>
	, count(*) as "Rows" from Album  --<2>

UNION
Select 
	'Artist' as tableName
	, count(*) from Artist
	
UNION
Select 
	'Customer' as tableName
	, count(*) from Customer

UNION
Select 
	'Employee' as tableName
	, count(*) from Employee	

UNION
Select 
	'Genre' as tableName
	, count(*) from Genre	
	
UNION
Select 
	'Invoice' as tableName
	, count(*) from Invoice
	
UNION
Select 
	'Invoice Line' as tableName
	, count(*) from InvoiceLine	
	
UNION
Select 
	'Media Type' as tableName
	, count(*) from MediaType
	
UNION
Select 
	'Playlist' as tableName
	, count(*) from Playlist
	
UNION
Select 
	'Playlist Track' as tableName
	, count(*) from PlaylistTrack
	
UNION
Select 
	'Track' as tableName
	, count(*) from Track	
	
Order by 2 desc  --<3>