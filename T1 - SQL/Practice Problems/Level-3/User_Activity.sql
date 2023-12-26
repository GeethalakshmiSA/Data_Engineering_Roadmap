-- DDL
CREATE TABLE IF NOT EXISTS user_activity(date date,user_id int,activity varchar(50));

INSERT INTO user_activity VALUES
('2022-02-20',1,"abc"),
('2022-02-20',2,"xyz"),
('2022-02-22',1,"xyz"),
('2022-02-22',3,"klm"),
('2022-02-24',1,"abc"),
('2022-02-24',2,"abc"),
('2022-02-24',3,"abc");

-- DQL
SELECT * FROM user_activity;

/* Find unique user count for each day
Day 20 has 2 unique users (1, 2), Day 22 has 1 unique user (3) and Day 24 has no unique users. */


-- Result Query
-- Base Approach for all possible solutions => Window Function (ROW_NUMBER)
-- Approach 1 : using CTE + LEFT JOIN
with first_login as
(select * from 
(select date, user_id, row_number() over(partition by user_id order by date) as rn from user_activity) x
where x.rn = 1)
select t1.date, if(t2.user_count is null, 0, t2.user_count) as unique_user_count from
(select distinct date from user_activity) t1 
left join
(select date, count(*) as user_count from first_login group by date) t2
on t1.date = t2.date;

-- Approach 2 : using LEFT JOIN
select  t1.date, if(t2.user_count is null, 0, t2.user_count) as unique_user_count from
(select distinct date from user_activity) t1 left join
(select date, count(*) as user_count from
(select date, user_id, row_number() over(partition by user_id order by date) as rn from user_activity) x
where x.rn = 1 group by date) t2
on t1.date = t2.date;

-- Approach 3 : using AGGREGATE Function
select date, sum(case when rn=1 then 1 else 0 end) as unique_user_count from (
select date, user_id, row_number() over(partition by user_id order by date) as rn
from user_activity) x
group by date;
