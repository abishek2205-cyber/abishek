show databases;   
create database sathyabama;
use sathyabama 
create table ECE(
sid int,
sname varchar(30),
smarks int);

desc ECE;
select * from ECE;
insert into ECE
values(20,'abishek',79);
select * from ECE;
alter table ECE add column sreg int ;
select * from ECE;
alter table ECE add column insta varchar(25) default'nil';
select * from ECE ;
alter table ECE drop column sreg;

select * from ECE;
update ECE  set smarks=79
where sname ="abishek";
select * from ECE;
update ECE set smarks=smark+1;
select * from ECE;
update ECE set sname = "abishek storm"
where sname="abishek";

select * from ECE;

  

  
