/*

=== Ranking - How to perform a ranking of the results

NOTE: Because `rank` can *NOT* be done in the same query as an aggregate function `count`
this query uses a derived table for the `count` which is used in the main query for the `rank`

==== Topics 

* Aggregates (Count, Sum, Min, Max, Avg, etc)
* Column Alias, rename a column
* Comments, information or debugging
* Derived Table (Sub-Query)
* Group by, required for non-aggregate columns
* Join objects (Table, View, Derived Table) together
* OLAP function basic (Csum, Rank, Cube)
* Table alias, standardize and simplify table/view names
* Teradata Specific syntax
* Union, multiple select queries stacked 

==== Special Notes
* Do *NOT* use `order by` when using `rank`, this will return the incorrect results
*/

Select
   GC.genreName
   ,GC.saleCount
   ,rank(GC.saleCount) as ranking  --<1><2>
from
(
	SELECT	
		G.Name as genreName  --<1>
		,count(IL.InvoiceLineID) As saleCount --<3>
	from InvoiceLine IL
	
	inner join Track T  --<4>
	on T.trackID = IL.TrackID
	
	inner join Genre G  --<4>
	on G.GenreID = T.GenreID
	
	group by 
		genreName  --<5>
) as GC  -- genreCounts derviced table name (GC)  --<6>

