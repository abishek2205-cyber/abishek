show databases;
create database login;
use login;
create table  person(
id int not null,
first_name varchar(30) not null,
 lastname varchar(20) not null,
 primary_mob_number bigint not null,
 secondary_mob_number bigint,
 unique(id));
 select * from person;
 
 select * from person;
 desc person;
 insert into person
values(45,'abishek','muthusammy',6382763,39487477);
select * from person;
insert into person
values(56,'jerin','asfaak',2766257,72654528);
select *  from person;
 
 








