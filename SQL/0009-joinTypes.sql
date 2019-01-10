/*
=== joinTypes - Inner Join and Outer Join

   
==== TOPICS

* List of Track count for *ALL* Genres
* Multiple queries in one statment
* Inner Join
* Outer Join

   
==== TIPS


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
    ,count(T.TrackID) as numberTracks --<3>
from Track T    

inner Join Genre G   --<4>
on G.GenreID = T.GenreID

Group by
	G.GenreID
	,genreName   --<5>
order by 
	genreName;  --<5>
	
	
-- Track Count by Genre (Inner Join)  Right
-- This returns *ALL* 28 genres because the table on the right is the Genre table
Select
    G.GenreID
    ,G.Name as genreName  --<1>    
    ,count(T.TrackID) as numberTracks --<3>
from Track T    

right outer Join Genre G   --<6>
on G.GenreID = T.GenreID

Group by
	G.GenreID
	,genreName   --<5>
order by 
	genreName;  --<5>	
	
	
-- Track Count by Genre (Inner Join)  Left
-- This returns *ALL* 28 genres because the table on the left is the Genre table
Select
    G.GenreID
    ,G.Name as genreName  --<1>    
    ,count(T.TrackID) as numberTracks --<3>
from Genre G   

left outer Join Track T  --<6>
on T.GenreID = G.GenreID

Group by
	G.GenreID
	,genreName   --<5>
order by 
	genreName;  --<5>		