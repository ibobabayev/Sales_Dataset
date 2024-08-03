create table "sales"
(
order_id int Primary Key,
customer_id int,
order_date date,
product_id int,
quantity int,
price float,
total_amount int,
product_name varchar(50)
);

drop table sales

insert into sales(order_id,customer_id,order_date,product_id,quantity,price,total_amount,product_name) values
(1001,501,'2023-01-10',2001,2,15.5,NULL,'first_product'),
(1002,502,'2023-01-12',2003,NULL,20.0,NULL,'second_product'),
(1003,503,'2023-01-15',2001,1,NULL,NULL,'third_product'),
(1004,NULL,'2023-01-17',2002,3,10.0,30.0,'fourth_product'),
(1005,504,NULL,2003,2,20.0,40.0,'fifth_product'),
(1006,505,'2023-01-20',2002,-1,10.0,-10.0,'sixth_product'),
(1007,506,'2023-01-21',2003,2,20.0,40.0,'seventh_product'),
(1008,507,'2023/01/22',2001,1,15.5,15.5,'eighth_product');

select * from sales

--Checking for NULL rows
select * from sales WHERE order_id IS NULL AND customer_id IS NULL AND order_date IS NULL AND product_id IS NULL AND quantity IS NULL AND price IS NULL AND total_amount IS NULL AND product_name IS NULL;

--Checking for duplicates
select Distinct(order_id) from sales

--Deleting row where the 'customer_id' is NULL.
delete from sales where customer_id is NULL

-- Filling Null value in 'quantity' column
select avg(quantity) from sales 
update sales set quantity=1 where quantity is NULL 

-- Filling Null value in 'price' column
select avg(price) from sales 
update sales set price=16.8 where price is NULL

-- Filling Null values in 'total_amount' column
update sales set total_amount=quantity*price where total_amount is NULL 

-- Filling Null values in 'total_amount' column
update sales set order_date='2023-01-17' where order_date is NULL 

-- Correct Negative Values in 'quantity' and 'total_amount' columns
update sales set quantity=ABS(quantity) where quantity<0 
update sales set total_amount=ABS(total_amount) where total_amount<0 

select * from sales
