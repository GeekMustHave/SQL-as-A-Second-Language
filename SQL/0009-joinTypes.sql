/*
=== joinTypes - Inner Join and Outer Join

==== Topics 

* Aggregates (Count, Sum, Min, Max, Avg, etc)
* Between function
* Column Alias, rename a column
* Comments, information or debugging
* Group by, required for non-aggregate columns
* Join objects (Table, View, Derived Table) together
* Order by,  also known as sorting
* Where, results filter or restriction
* Table alias, standardize and simplify table/view names
*/
 
-- List of *all* Genre, there are 28 genres 
select
    G.GenreID
    ,G.Name as genreName  --<1>
from Genre G    
order by genreName;
-- Order by 2     --<2>


-- Track Count by Genre (Inner Join), this returns 25 genres
-- because 3 genres have no tracks
Select
    G.GenreID
    ,G.Name as genreName  --<1>    
    ,count(T.TrackID) as numberTracks --<2>
from Track T    

inner Join Genre G   --<3>
on G.GenreID = T.GenreID

Group by
	G.GenreID
	,genreName   --<4>
order by 
	genreName;  --<4>
	
	
-- Track Count by Genre (Inner Join)  Right
-- This returns *ALL* 28 genres because the table on the right is the Genre table
Select
    G.GenreID
    ,G.Name as genreName  --<1>    
    ,count(T.TrackID) as numberTracks --<2>
from Track T    

right outer Join Genre G   --<3>
on G.GenreID = T.GenreID  -- NOTE: G is first table, T is second table

Group by
	G.GenreID
	,genreName   --<4>
order by 
	genreName;  --<4>	
	
	
-- Track Count by Genre (Inner Join)  Left
-- This returns *ALL* 28 genres because the table on the left is the Genre table
Select
    G.GenreID
    ,G.Name as genreName  --<1>    
    ,count(T.TrackID) as numberTracks --<2>
from Genre G   

left outer Join Track T  --<3>
on T.GenreID = G.GenreID

Group by
	G.GenreID
	,genreName   --<4>
order by 
	genreName;  --<4>		