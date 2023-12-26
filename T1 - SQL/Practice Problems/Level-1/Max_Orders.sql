-- DDL
create table cust_ord (order_number int, customer_number int);
insert into cust_ord values (1, 1), (2, 2), (3, 3), (4, 3), (5, 2), (6, 3), (7, 4);

-- DQL
select * from cust_ord;

-- Find the customer number who has placed the largest number orders

-- Result Query
-- Approach 1 : With Subquery
select customer_number from
(select customer_number, count(order_number) as cnt from cust_ord group by customer_number) x
order by cnt desc limit 1;

-- Approach 2 : Without Subquery
select customer_number from cust_ord group by customer_number order by count(order_number) desc limit 1;
