#QUESTION:-
/*
1)Create a table named Employee in the database Company.
2)Assign a Primary Key to the field id in the table.
*/


#SOLUTION : 1

Create database Company;
use Company;


#SOLUTION : 2

Create table Employee
   (
    id       int NOT NULL,
    emp_name varchar(20),
    mail     varchar(30),
    salary   int,
    PRIMARY KEY (id)
   );
   
Select * from Employee;
