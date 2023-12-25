-- DDL
CREATE TABLE IF NOT EXISTS transactions(tnx_date date, merchant int, amount int, payment_mode varchar(10));
INSERT INTO transactions VALUES 
('2022-04-02', 1, 150, 'CASH'),
('2022-04-02', 1, 500, 'ONLINE'),
('2022-04-03', 2, 450, 'ONLINE'),
('2022-04-03', 1, 100, 'CASH'),
('2022-04-03', 3, 600, 'CASH'),
('2022-04-05', 5, 200, 'ONLINE'),
('2022-04-05', 2, 100, 'ONLINE');

-- DQL
SELECT * FROM transactions;

/*
FIND TOTAL AMOUNT RECEIVED BY EACH MERCHANT VIA CASH & ONLINE MODE
---------+------+--------+
MERCHANT | CASH | ONLINE |
---------+------+--------+
 1	     | 250	| 500    |
 2	     |  0	  | 550    |
 3	     | 600	|  0     |
 5	     |  0	  | 200    |
---------+------+--------+
*/

-- Result Query 
select merchant, 
sum(case when payment_mode = 'CASH' then amount else 0 end) as Cash,
sum(case when payment_mode = 'ONLINE' then amount else 0 end) as Online
from transactions
group by merchant;
