-- DDL
create table emp_salary (emp_id int, salary int);
insert into emp_salary values (1, 100), (2, 200), (3, 300), (4, 100), (5, 200), (6, 400), (7, 230), (8, 400), (9, 300);

-- DQL 
SELECT * FROM emp_salary;

-- Find the second highest salary

-- Result Query

-- Approach 1 : Using AGG function & Subquery
select max(salary) as second_max_salary from emp_salary where salary not in (select max(salary) from emp_salary);

-- Approach 2 : Using WINDOW function 
select distinct salary as second_max_salary from
(select *, dense_rank() over(order by salary desc) as rn from emp_salary) x
where x.rn = 2;
