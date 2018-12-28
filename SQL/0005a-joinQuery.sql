/* 
=== joinQuery - Multiple Table join with result restriction
   
==== TOPICS

* This query joins multiple table together
   
==== TIPS

* Table alias shorten the typing needed to complete the query
1-2 character alias recommended.
* Column alias help to give meaningful, non conflicting names. 
* Results being restricted with a a `where` clause
*/

Select 
   AR.ArtistID
   ,AR.name as artistName  --<1>
From Artist AR  --<2>
where artistName = 'Aerosmith' 