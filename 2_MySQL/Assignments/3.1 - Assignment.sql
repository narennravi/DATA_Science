# QUESTION:- 
/* Consider the given table Employee:-

ID	NAME	  AGE	ADDRESS	   SALARY
1	Ramesh	  32	Ahmedabad	2000
2	Khilan	  25	Delhi    	1500
3	kaushik	  23	Kota     	2000
4	Chaitali  25	Mumbai   	6500
5	Hardik	  27	Bhopal   	8500
6	Komal	  22	MP       	4500
7	Muffy	  24	Indore   	10000
 

1. Update the address of Komal to "Maharashtra"      */


# SOLUTION:-
use employee;
create table Employee
  (
   ID int,
   NAME varchar(15),
   AGE int,
   ADDRESS varchar(20),
   SALARY int
  );
  
insert into Employee 
values (1,'Ramesh',32,'Ahmedabad',2000), 
       (2,'Khilan',25,'Delhi',1500),
       (3,'Kaushik',23,'Kota',2000),
       (4,'Chaitali',25,'Mumbai',6500),
       (5,'Hardik',27,'Bhopal',8500),
       (6,'Komal',22,'MP',4500),
       (7,'Muffy',24,'Indore',10000);
       
select * from Employee;
       
update Employee
set ADDRESS = 'Maharashtra'
where NAME = 'Komal' AND SALARY=4500;

select * from Employee;