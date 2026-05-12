-- Create Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert Data into Employees Table
INSERT INTO Employees VALUES
(1, 'Rahul', 'HR', 30000),
(2, 'Sneha', 'IT', 50000),
(3, 'Arjun', 'Finance', 45000),
(4, 'Meena', 'IT', 60000);

-- SELECT Statement
SELECT * FROM Employees;

-- WHERE Clause
SELECT * FROM Employees
WHERE department = 'IT';

-- ORDER BY Clause
SELECT * FROM Employees
ORDER BY salary DESC;

-- GROUP BY with COUNT()
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;

-- Aggregate Function: AVG()
SELECT AVG(salary) AS average_salary
FROM Employees;

-- Subquery Example
SELECT emp_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);

-- Create Departments Table
CREATE TABLE Departments (
    department VARCHAR(50),
    manager_name VARCHAR(50)
);

-- Insert Data into Departments Table
INSERT INTO Departments VALUES
('HR', 'Kiran'),
('IT', 'Suresh'),
('Finance', 'Anita');

-- INNER JOIN Example
SELECT Employees.emp_name,
       Employees.department,
       Departments.manager_name
FROM Employees
INNER JOIN Departments
ON Employees.department = Departments.department;

-- AND Operator
SELECT * FROM Employees
WHERE department = 'IT'
AND salary > 50000;

-- OR Operator
SELECT * FROM Employees
WHERE department = 'HR'
OR salary > 50000;

-- IN Operator
SELECT * FROM Employees
WHERE department IN ('HR', 'Finance');
