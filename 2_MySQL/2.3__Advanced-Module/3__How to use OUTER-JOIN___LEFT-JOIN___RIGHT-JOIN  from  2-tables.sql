/*
SQL JOIN:-
        A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

Inner Join:-
       The most important and frequently used of the joins is the INNER JOIN. 
       They are also referred to as an EQUIJOIN.
       INNER JOIN creates a new resulttable by combining column values of two tables (table1 and table2) based upon the join-predicate. 
       The query compares each row of table1 with each row of table2 to find all pairs of rows which satisfy the join-predicate. 
       When the join-predicate is satisfied, column values for each matched pair of rows of A and B are combined into a result row.

Syntax :-
     SELECT table1.column1, table2.column2...FROM table1 INNER JOIN table2 ON table1.common_field = table2.common_field;
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
