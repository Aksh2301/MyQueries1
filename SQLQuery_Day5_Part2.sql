-- Create the employee table
CREATE TABLE employee (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    birth_date DATE,
    sal DECIMAL(10, 2),
    comm DECIMAL(10, 2),
    dept_no INT
);

-- Insert the records
INSERT INTO employee (empno, ename, job, mgr, birth_date, sal, comm, dept_no) VALUES
(8369, 'smith', 'clerk', 8902, '1990-12-18', 800, NULL, 20),
(8499, 'anya', 'salesman', 8698, '1991-02-20', 1600, 300, 30),
(8521, 'seth', 'salesman', 8598, '1991-02-22', 1250, 500, 30),
(8566, 'mahadevan', 'manager', 8839, '1991-04-02', 2985, NULL, 20),
(8654, 'momin', 'salesman', 8698, '1991-09-28', 1250, 1400, 30),
(8698, 'bina', 'manager', 8839, '1991-05-01', 2850, NULL, 30),
(8839, 'amir', 'president', NULL, '1991-11-18', 5000, NULL, 10),
(8844, 'kuldeep', 'salesman', 8698, '1991-09-08', 1500, 0, 30),
(8882, 'shiva', 'manager', 8839, '1991-06-09', 2450, NULL, 10),
(8886, 'anoop', 'clerk', 8888, '1992-01-12', 1100, NULL, 20),
(8888, 'scott', 'analyst', 8566, '1992-12-09', 3000, NULL, 20),
(8900, 'jstin', 'clerk', 8698, '1991-12-03', 950, NULL, 30),
(8902, 'fakir', 'analyst', 8566, '1990-12-03', 3000, NULL, 20),
(8934, 'mita', 'clerk', 8882, '1992-01-23', 1300, NULL, 10);
SELECT dept_no, sum(sal) AS count_salary
FROM employee
GROUP BY dept_no;
SELECT dept_no,sal from employee order by dept_no asc;

CREATE TABLE contacts (
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
);

Insert into contacts select job,ename,mgr from employee where sal>1000;
delete from contacts;
select * from contacts;