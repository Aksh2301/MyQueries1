create table employee(empno int,ename varchar(30),job varchar(30),mqr int, sal int, comm int, dept_no int)
insert into employee values(8369,'smith','clerk',8902,800,null,20);
insert into employee values(8499,'anya','salesman',8698,1600,300,30);
insert into employee values(8521,'seth','salesman',8698,1250,500,30);
insert into employee values(8566,'mahadevan','manager',8839,2985,null,20);
insert into employee values(8654,'momin','salesman',8698,1250,1400,30);
insert into employee values(8698,'bina','manager',8839,2850,null,30);
insert into employee values(8839,'amir','president',null,5000,null,10);
insert into employee values(8844,'kuldeep','salesman',8698,1500,0,30);
insert into employee values(8882,'shiva','manager',8839,2450,null,10);
insert into employee values(8886,'anoop','clerk',8888,1100,null,20);
insert into employee values(8888,'scott','analyst',8566,3000,null,20);
insert into employee values(8900,'jstin','clerk',8698,950,null,30);
insert into employee values(8902,'fakir','analyst',8566,3000,null,20);
insert into employee values(8934,'mita','clerk',8882,1300,null,10);
select * from employee;