create DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker(
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JD DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JD, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
SELECT DEPARTMENT,SALARY
FROM Worker 
ORDER BY SALARY ASC; 
 
SELECT * FROM Worker 
ORDER BY JD DESC;

SELECT DEPARTMENT,SUM(SALARY) FROM Worker
GROUP BY DEPARTMENT;

SELECT SUM(SALARY) FROM Worker
GROUP BY SALARY;

SELECT * FROM Worker
ORDER BY WORKER_ID
LIMIT 6 OFFSET 2;  

SELECT * FROM Worker
ORDER BY WORKER_ID desc
LIMIT 2 OFFSET 5 ; 

SELECT * FROM Worker
ORDER BY WORKER_ID
LIMIT 10 OFFSET 5; 


SELECT TRIM(' MANI ');

SELECT LTRIM(' MANI ');

SELECT RTRIM(' MANI ');

SELECT UPPER(FIRST_NAME) FROM Worker;

SELECT LOWER(LAST_NAME) FROM Worker;


create table award_winners(
id int,
name varchar(25),
award_name varchar(30));

insert into award_winners values(001,'Karthick','Volleyball winners'),(002,'Gopi','Basketball Runners'),(003,'Adib','Oscar winners'),
(004,'Harij','English SpellBee 2nd Runner-up'),(005,'Loki','Volleyball winners'),(006,'Sakthi','Badminton Nationals runners'),
(007,'Iqhlas','Debug winners'),(008,'AK','Basketball runners'),(009,'Kamal','Hackathon runners'),
(010,'Barath','Hackathon winners');

select * from award_winners;

create table students(
id int,
name varchar(25));

insert into students values(005,'Loki'),(1001,'Srihari'),(1003,'Dinesh'),(001,'Karthick'),(1005,'Tharun'),
(1006,'Vamsi'),(1007,'Monish'),(1008,'Rohith'),(1009,'Alwyn'),(1010,'Akash');

select * from students;

select * from students 
where id=(select id from award_winners where id=5);

select * from students 
where id=(select id from award_winners where name="karthick");

select * from award_winners
where id=(select id from students where id=1);

select * from award_winners
where id=(select id from students where name="Loki");

