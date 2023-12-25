-- DDL
CREATE TABLE IF NOT EXISTS employee (emp_id int, emp_name varchar(30), supervisor int, salary int);
INSERT INTO employeebonus VALUES
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4,'Thomas', 3, 4000);

CREATE TABLE IF NOT EXISTS bonus (emp_id int, bonus_amount int);
INSERT INTO bonus VALUES (2, 500), (4, 2000);

-- DQL
SELECT * FROM employee;
SELECT * FROM bonus;

/*
Report the name and bonus amount of each employee with a bonus amount less than 1000

Expected Output:
+------+-------+
| name | bonus |
+------+-------+
| Brad | null  |
| John | null  |
| Dan  | 500   |
+------+-------+
*/

-- Result Query
SELECT e.name, b.bonus
FROM employee e LEFT JOIN bonus b
ON e.empid = b.empid
WHERE b.bonus < 1000 OR b.bonus IS NULL;
