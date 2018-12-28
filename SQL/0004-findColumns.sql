/* 
=== findColumn - Find out what objects (Table, View) where a specific named column exist
   
==== TOPICS

* This is a Teradata specific command
* The list of columns are the ones that are the most important, 
there are many other columns available. Use a single column name (*) to see them all.
   
==== TIPS

* CoumnTypes Reference: http://developer.teradata.com/doc/connectivity/tdnetdp/14.00/webhelp/DataTypeMappings.html
* Replace `CustomerID` with the column you are interested in
 
*/

select 
	ColumnName
	,DatabaseName
	,TableName
	,ColumnFormat
	,ColumnType
	,ColumnLength	
from dbc.columnsX
where ColumnName = 'CustomerID'


