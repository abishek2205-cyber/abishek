CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
        select count(WORKER_ID) as no_of_workers from Worker;
		
        select min(SALARY) as low_salary from worker;
        
        select max(SALARY) as high_salary from Worker;
        
        select sum(SALARY) as tolal_salary from Worker;
        
        select avg(SALARY) as aversage_salary from Worker; 
        
        select avg(SALARY) from Worker
        where department in ('admin');
        
        select sum(SALARY) from Worker
        where department in ('hr','admin');
        
        select sum(SALARY) from Worker
        where department in ('hr','account');
        
        select count(*) from Worker
        where FIRST_NAME like 'v%';
        
        select sum(SALARY) from Worker
        where salary between 50000 and 200000;
        
select department from worker
union 
select FIRST_NAME from worker;

select WORKER_ID from worker
union all
select SALARY from worker;
select FIRST_NAME,SALARY,
case
     when salary =500000 then 'rich'
     when salary >=100000 and salary <500000 then 'medium'
     else 'poor'
end
as case_statement from worker;

select distinct(salary) as unique_value from worker
where salary>= 100000; 
    
     