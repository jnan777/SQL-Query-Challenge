DROP TABLE Employees;
CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    DepartmentName VARCHAR(100),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees
(EmployeeID, EmployeeName, DepartmentID, DepartmentName, Salary)
VALUES
(1, 'Arjun', 101, 'IT', 60000),
(2, 'Priya', 102, 'HR', 45000),
(3, 'Rahul', 101, 'IT', 75000),
(4, 'Kiran', 103, 'Finance', 55000);

SELECT *
FROM Employees;

SELECT DISTINCT DepartmentName
FROM Employees;

SELECT *
FROM Employees
WHERE Salary > 50000;

SELECT *
FROM Employees
WHERE DepartmentName = 'IT';

SELECT *
FROM Employees
WHERE Salary BETWEEN 40000 AND 70000;

SELECT *
FROM Employees
WHERE DepartmentName IN ('IT', 'HR', 'Finance');

SELECT *
FROM Employees
ORDER BY Salary DESC;

SELECT *
FROM Employees
WHERE DepartmentName = 'IT'
AND Salary > 50000;

SELECT *
FROM Employees
WHERE DepartmentName = 'IT'
OR DepartmentName = 'HR';

SELECT *
WHERE NOT DepartmentName = 'HR';