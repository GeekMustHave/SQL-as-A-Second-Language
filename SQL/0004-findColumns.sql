/* 
=== findColumn - Find out what objects (Table, View) where a specific named column exist
   
==== Topics 

* Where, results filter or restriction
* Teradata Specific syntax

==== Special Note

* ColumnTypes Reference: http://developer.teradata.com/doc/connectivity/tdnetdp/14.00/webhelp/DataTypeMappings.html
* Replace `CustomerID` with the column you are interested in
* The list of columns in the `Select` are the ones that are the most important, 
there are many other columns available. Use a single column name `*` to see them all.
   
 
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


