/* 
=== displayViewColumns - List the columns of a known view
   
==== TOPICS

* This is a Teradata specific command
* The list of information fields below are the ones that are the most important, 
there are many other information fields available. Use a single field name (*) to see them all.
   
==== TIPS

* CoulmnTypes Reference: http://developer.teradata.com/doc/connectivity/tdnetdp/14.00/webhelp/DataTypeMappings.html
* Replace `vAlbum` with the view you are interested in
* if the view name matches more than one view across databases, all the view you have permissions to will be returned.
 
*/

select 
    ColumnName
	,DatabaseName
	,TableName
	,ColumnFormat
	,ColumnType
	,ColumnLength	
from dbc.columnsX
where TableName  = 'vAlbum'
order by ColumnID  --<1>
