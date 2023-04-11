/*
SQL JOIN:-
        A JOIN clause is used to combine rows from two or more tables, based on a related column between them.


INNER JOIN:-
       The most important and frequently used of the joins is the INNER JOIN  &  also referred to as an EQUIJOIN.
       The INNER JOIN keyword selects records that have matching values in both tables(table-1 & table-2).


Syntax  [INNER JOIN]:-

    SELECT column_name(s)
    FROM table1
    INNER JOIN table2
    ON table1.column_name = table2.column_name;
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

LEFT JOIN:-
       LEFT JOIN keyword returns all records from the left table (table1), and the matching records (if any) from the right table (table2).


Syntax  [LEFT JOIN]:-

    SELECT column_name(s)
    FROM table1
    LEFT JOIN table2
    ON table1.column_name = table2.column_name;
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

RIGHT JOIN:-
       RIGHT JOIN keyword returns all records from the right table (table2), and the matching records (if any) from the left table (table1).


Syntax  [RIGHT JOIN]:-
   
    SELECT column_name(s)
    FROM table1
    RIGHT JOIN table2
    ON table1.column_name = table2.column_name;
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CROSS JOIN:-
       CROSS JOIN keyword returns all records from both tables (table1 and table2).


Syntax  [CROSS JOIN]:-

    SELECT column_name(s)
    FROM table1
    CROSS JOIN table2;
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/



#  CREATING Database  &  accessing it:
create database Joins;
use joins;


#  CREATING table --> "Table_A"    &    INSERTING value 
create table Table_A
    (
     first_name    varchar(20),
     last_name     varchar(20),
     age           int,
     sex           varchar(2),
     mail          varchar(25)
    );
insert into Table_A 
values
     ('Marry','James',24 ,'F','marryj1798@mail.com'),
     ('Tamil','Murugan',25 ,'M','tamilmurugan2mail.com'),
     ('Vijay','Chakravarthy',26 ,'M','vijayck@mail.com'),
     ('kiran','Neelakanda',27 ,'M','kirann@mail.com'),
     ('Rashika','Abdhul', 22,'F','rashika786@mail.com');
 
 
#  CREATING table --> "Table_B"    &    INSERTING value 
create table Table_B
     (
     first_name    varchar(20),
     course        varchar(10),
     office_name   varchar(15),
     salary        int,
     location      varchar(30)
     );
insert into Table_B
values 
     ('Vijay','B.Com','TCS',28000,'Chennai'),
     ('Rashika','B.E','INFOSYS',22000,'Chennai'),
     ('Sunil','M.E','HCL',30000,'Bangalore'),
     ('Tamil','B.E','VOLVO',45000,'Bangalore'),
     ('Apsara','M.Tech','INTEL',68000,'Hyderabad');
     
alter table Table_B rename column location to city;         # Renaming an column name [location ---> city]

select * from  Table_A;                                     # Displays contents of ---> "Table_A" 
select * from  Table_B;                                     # Displays contents of ---> "Table_B" 
#--------------------------------------------------------------------------------------------------------------------------------- 
#   JOINS:-
/*       1. Joins is most common used in all formats of SQL-versions
		 2. Purpose of join is to 'Retrieve_datas from multiple table simultaneously' --> using conditional clause(WHERE) & operators(IN / OR / AND / BETWEEN / ON / AS / LIKE etc.,) 
		 3. Joins is classified into 3-categories in my_sql:-
                     INNER Join - Mostly used
                     LEFT_OUTER Join  
                     RIGHT_OUTER Join
*/
#--------------------------------------------------------------------------------------------------------------------------------- 

#  _____INNER_Join______:-           [Union = Common records from Table-->(A & B) will be grasped]
select * from Table_A;
select * from Table_B;

# Ony Matching records from Table_A  &  Table_B displayed --> based on [first_name]
select A.first_name, A.last_name, A.age, A.sex, A.mail, B.first_name, B.course, B.office_name, B.salary, B.city
from Table_A  A, Table_B  B
where A.first_name = B.first_name;

/* 
NOTE:-
      A is referred as alias name - "Table_A"
      B is referred as alias name - "Table_B"
      You can choose column_names from respective table through alias_name & only "choosen columns" displayed.        
*/
#--------------------------------------------------------------------------------------------------------------------------------- 

#  _____LEFT_OUTER_Join______:-   
select * from Table_A;
select * from Table_B;

#  Only Table_A contents  &  Matching records of Table_A, Table_B --> based on [first_name]
select A.first_name, A.last_name, A.age, A.sex, A.mail, B.first_name, B.course, B.office_name, B.salary, B.city 
from 
Table_A  A left join Table_B  B
on A.first_name = B.first_name;

#--------------------------------------------------------------------------------------------------------------------------------- 

#  _____RIGHT_OUTER_Join______:-   
select * from Table_A;
select * from Table_B;

#  Only Table_B contents  &  Matching records of Table_A, Table_B ----> based on [first_name]
select A.first_name, A.last_name, A.age, A.sex, A.mail, B.first_name, B.course, B.office_name, B.salary, B.city 
from 
Table_A  A right join Table_B  B
on A.first_name = B.first_name;

#---------------------------------------------------------------------------------------------------------------------------------

#  _____CROSS_Join_____:-
select * from Table_A;
select * from Table_B;				      

# Cross join --> returns all records from both tables (table1 and table2)				      
select A.first_name, A.last_name, A.age, A.sex, A.mail, B.first_name, B.course, B.office_name, B.salary, B.city 
from 
Table_A  A  cross join  Table_B  B;

#---------------------------------------------------------------------------------------------------------------------------------
				      
				      
				      
				      
				      
				      
