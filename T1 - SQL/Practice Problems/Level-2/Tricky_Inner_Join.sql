-- DDL
create table A (colA int);
insert into A values (1), (2), (1), (5), (NULL), (NULL);

create table B (colB int);
insert into B values (NULL), (2), (5), (5);

/*
Perform inner join operation for Table A and B using the columns colA, colB
Print the count of total number of rows in the output

Expected Count => 5
*/

-- Common Approach 
-- Observed Count is 3 that is not expected
select count(*) from A inner join B on A.colA = B.colB;

-- Result Query
-- 1 Logical Approach
select count(*) from A inner join B on A.colA = B.colB or (A.colA is null and B.colB is null);

-- 2 Using NULL SAFE Operator 
select count(*) from A inner join B on A.colA <=> B.colB;
