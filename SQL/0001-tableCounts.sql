/* 
=== tableCounts - Count rows in all Chinook tables 
   
==== Topics 

* Aggregates (Count, Sum, Min, Max, Avg, etc)
* Column Alias, rename a column
* Order by,  also known as sorting
* Union, multiple select queries stacked 
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