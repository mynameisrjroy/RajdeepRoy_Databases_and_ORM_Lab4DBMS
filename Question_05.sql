/* 05. Display the Supplier details who can supply more than one product. */

select * from supplier where SUPP_ID IN (
select supp_id from supplier_pricing group by SUPP_ID
having count(SUPP_ID) > 1
);