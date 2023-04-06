# QUESTIONS:-
/*
1)Create the databases named student , employee , production with tables  and fields of your own.

2)Display databases and tables using SHOW command.

3)Drop any one table in the database STUDENT.

4)Alter any field of the table in the database PRODUCTION
*/


# SOLUTION: 1

create database student;
create database employee;
create database production;


use student;
create table bio
  (
   name varchar(20) NOT NULL,
   roll_no int,
   grade varchar(2) NOT NULL
  );
create table test_details
  (
   Index_no int,
   mail varchar(25) NOT NULL,
   sex varchar(4)
  );


 use employee;
 create table status
   (
    employer_name varchar(25) NOT NULL,
    emplye_idy varchar(10) NOT NULL,
    mail varchar(20),
    experience int
   );
  
  
use production;
create table sales
   (
     prod_idy int,
     prod_name varchar(30),
     prod_price int
   );

#-----------------------------------------------------------------------------------------------------
#SOLUTION: 2

show databases;
show tables ;

#-----------------------------------------------------------------------------------------------------
#SOLUTION: 3

use student;
drop table bio;

#-----------------------------------------------------------------------------------------------------
#SOLUTION: 4

use production;
alter table sales drop column prod_idy;

#-----------------------------------------------------------------------------------------------------