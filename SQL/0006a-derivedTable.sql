/* 
=== derivedTable - Gets the list of artists and album counts

Part A - Gets the list of artists with album count
this will become one of the derived tables in the final query
   
==== TOPICS

* Table alias
* Column Alias
* Join objects (Table, View, Derived Table) together
* Derived Table (Sub-Query)
* Count aggregate

   
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

.Derived Tables (Sub-Queries)
* Start with a regular query until you get the results you need.
* Enclose the regular query in `(...)` and assign a table alias name.
* Join the derived table to another.

.Aggregate Functions
* Functions used to compress or limit the number of rows into a single row.
* `Count(?)` Counts the number of rows, duplicates included in the count.
 
*/


select
    AR.ArtistID
    ,count(AL.AlbumID) as albumCount  --<1><2>
from Album AL --<3>

INNER JOIN Artist AR  --<3>
on AR.ArtistID = AL.ArtistID --<4>

Group by AR.ArtistID  --<5>

    