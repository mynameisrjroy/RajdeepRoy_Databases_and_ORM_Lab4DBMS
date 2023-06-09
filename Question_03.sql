/* 3. Display the total number of customers based on gender who have placed orders of worth at least Rs.3000. */

set SQL_Mode='';
select count(cus_name) as 'Total Customers', cus_gender from (
	select * from (
		select C.CUS_NAME, C.CUS_GENDER, O.* from customer c
		inner join 
		`order` o
		on c.CUS_ID = o.cus_id
		where o.ord_amount >= 3000
	) as CO
	group by CO.cus_id
) as CO2
group by cus_gender