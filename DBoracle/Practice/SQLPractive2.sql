 create table tbl_sales(
            sale_id number,
            product_id number(5),
            quantity_sold number,
            sale_date date,
            total_price number(5,2)        
 );

 
insert into tbl_sales(sale_id,product_id,quantity_sold,sale_date,total_price) values(1,101,5,'01-JAN-24',2400.00);
insert into tbl_sales(sale_id,product_id,quantity_sold,sale_date,total_price) values(2,102,3,'02-JAN-24',900.00);
insert into tbl_sales(sale_id,product_id,quantity_sold,sale_date,total_price) values(3,103,2,'02-JAN-24',60.00);
insert into tbl_sales(sale_id,product_id,quantity_sold,sale_date,total_price) values(4,104,4,'03-JAN-24',80.00);
insert into tbl_sales(sale_id,product_id,quantity_sold,sale_date,total_price) values(5,105,6,'03-JAN-24',90.00);



select * from tbl_sales;




--  Retrieve sale_id and quantity_sold from sales table.
 select sale_id , quantity_sold from tbl_sales;




--  Retrieve the sale_id and sale_date from the Sales table.
select sale_id , sale_date from tbl_sales;


--  Filter the Sales table to show only sales with a total_price greater than $100.
select * from tbl_sales where total_price>100;




-- Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024.
select sale_id,total_price from tbl_sales where sale_date='03-JAN-24';


-- Retrieve the sale_id, product_id, and total_price from the Sales table for sales with a quantity_sold greater than 4.
select sale_id,product_id,total_price from tbl_sales where quantity_sold>4;



-- Retrieve all columns from the Sales table those sale_id are 1, 3 & 5.
select * from tbl_sales where sale_id in (1,3,5);




-- Retrieve all columns from the Sales table those total_price between 90 and 1000.
select * from tbl_sales where total_price between 90 and 1000;




-- Retrieve all columns from the Sales table those total_price not between 90 and 1000.
select * from tbl_sales where total_price not between 90 and 1000;




-- Retrieve all columns from the Sales table those sale_id are not in 1, 3 & 5.
select * from tbl_sales where sale_id not in (1,3,5);



-- Update total_price as 500 in  the Sales table those sale_id are 1, 3 & 5.
update tbl_sales set total_price=500 where sale_id in (1,3,5);



-- delete from the Sales table those total_price not between 90 and 1000.
 delete from tbl_sales where total_price not between 90 and 1000;




--  Sort all the records using sale_id column in ascending order
select * from tbl_sales order by sale_id;




-- Sort all the records using sale_id column in descending order.
 select * from tbl_sales order by sale_id desc;



-- Rename the sale_id column as sales_id;
alter table tbl_sales rename column sale_id to sales_id;



-- Drop the column sales_id.
alter table tbl_sales drop column sales_id;


-- Rename the table as tbl_sales.
alter table tbl_sales rename to table_sales;

-- Drop the table.
drop table table_sales;






