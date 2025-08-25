show databases;
create database colleges;
use colleges;

create table college(
collegeid int primary key,
collegename varchar(50) not null,
);
insert into college
values(001,'vrs'),
	(002,'srm'),(003,'loyola');

create table department(
    departmentid int primary key,
    departmentname varchar(30) not null,
    collegeid int not null,
    foreign key(collegeid) references college(collegeid)
     on delete cascade
     on update cascade
    );
     
     insert into department 
     values(01,'ECE',100),
     (02,'IT',101),
     (03,'CS',102),
     (04,'CS',103),
     (05,'ECE',104),
     (06,'CS',105);
     
     create table employee(
     eid int primary key,
     ename varchar(50) not null,
     departmentid int not null,
     foreign key(departmentid) references department(departmentid)
     on delete cascade
     on update cascade
     );
     
     insert into employee 
     values(001,'muthu',01),
     (002,'saravana',02),
     (003,'raman',06),
     (004,'vishnu',04);