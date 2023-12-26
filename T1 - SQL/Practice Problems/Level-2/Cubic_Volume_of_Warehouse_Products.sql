CREATE TABLE warehouse (wh_name varchar(15), product_id int, units int);
insert into warehouse values
('LCHouse1', 1, 1),
('LCHouse1', 2, 10),
('LCHouse1', 3, 5),
('LCHouse2', 1, 2),
('LCHouse2', 2, 2),
('LCHouse3', 4, 1);

create table warehouse_products (product_id int, product_name varchar(20), width int, length int, height int);
insert into warehouse_products values
(1, 'LC-TV', 5, 50, 40),
(2, 'LC-KeyChain', 5, 5, 5),
(3, 'LC-Phone', 2, 10, 10),
(4, 'LC-T-Shirt', 4, 10, 20);

select * from warehouse;
select * from warehouse_products;

/*
How much cubic feet of volume does the inventory occupy in each warehouse
LCHouse1 : 1 unit of LC-TV + 10 units of LC-KeyChain + 5 units of LC-Phone
Total Volume = 1*(5*50*40) + 10*(5*5*5) + 5*(2*10*10) => 12250 cubic feet
*/

select a.wh_name, sum(a.units * (b.width*b.length*b.height)) as product_volume from
warehouse a inner join warehouse_products b
on a.product_id = b.product_id
group by a.wh_name;
