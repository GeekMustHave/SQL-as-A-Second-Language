

select
	i.InvoiceDate
	,extract(month from I.invoicedate) as invoiceMonth
	,extract(day from i.invoicedate) as invoiceDay
		,i.customerID
	,i.total as invoiceTotal

	,csum(invoiceTotal, invoicedate) as cumulativeSum

from Invoice I
where
    extract(month from i.InvoiceDate) in (9,10,11,12)
and extract(day from i.invoicedate) in (1,2,3,4,5,6,7,8)   
order by 
	i.invoiceDate 