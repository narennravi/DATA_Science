#QUESTIONS:-
/*
1)Create a table named Employee in the database Company
2)Assign a Primary Key to the field id in the table.
*/


#SOLUTION:
create database Company;
use Company;

create table Employee
  (
   id       int NOT NULL,
   employer varchar(25),
   mail_id  varchar(30),
   location varchar(20),
   PRIMARY KEY (id)
  );
  
  explain Employee;
#----------------------------------------------------------------------------------------------------------