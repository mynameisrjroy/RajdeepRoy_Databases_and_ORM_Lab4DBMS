/* 4. Display all the orders along with product name ordered by a customer having Customer_Id=2 */

select p.pro_name as 'ProductName', o.* from `order` o
inner join supplier_pricing sp
on o.PRICING_ID = sp.PRICING_ID
inner join product p
on p.PRO_ID = sp.pro_id
where o.CUS_ID = 2;