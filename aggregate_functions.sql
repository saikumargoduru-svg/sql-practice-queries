-- COUNT()
SELECT COUNT(*) AS total_employees
FROM Employees;

-- SUM()
SELECT SUM(salary) AS total_salary
FROM Employees;

-- AVG()
SELECT AVG(salary) AS average_salary
FROM Employees;

-- MIN()
SELECT MIN(salary) AS minimum_salary
FROM Employees;

-- MAX()
SELECT MAX(salary) AS maximum_salary
FROM Employees;

-- Difference Between MAX and MIN
SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM Employees;

-- Mathematical Expression
SELECT emp_name,
       salary,
       salary * 12 AS annual_salary
FROM Employees;
