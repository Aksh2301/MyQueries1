CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    HireDate DATE,
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Department, Salary)
VALUES (1, 'John', 'Doe', '1980-01-15', '2010-06-01', 'HR', 60000.00);

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Department, Salary)
VALUES (2, 'Jane', 'Smith', '1985-02-20', '2012-09-15', 'Finance', 65000.00);

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Department, Salary)
VALUES (3, 'Michael', 'Brown', '1990-03-25', '2015-11-20', 'IT', 70000.00);

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Department, Salary)
VALUES (4, 'Emily', 'Davis', '1992-04-30', '2018-01-10', 'Marketing', 55000.00);

INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, Department, Salary)
VALUES (5, 'David', 'Wilson', '1975-05-10', '2008-03-23', 'Sales', 72000.00);

select max(salary) from Employees
select salary from Employees order by salary desc;
select max(salary) from Employees where Salary<(select max(salary) from Employees);
select max(salary) from Employees where Salary<(select max(salary) from Employees where Salary < (select max(salary) from Employees)); 

select top 1 salary from (select distinct top 2 salary 
from Employees
order by Salary desc)
Result
Order by Salary desc