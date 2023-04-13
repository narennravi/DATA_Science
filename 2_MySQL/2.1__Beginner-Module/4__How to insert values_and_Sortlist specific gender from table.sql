/*
_______________________________________________________________________________________________________________________________________________________________________________________________
INSERT Statement :-
            MySQL INSERT statement is used to insert data in MySQL table within the database.
	    We can insert single or multiple records using a single query in MySQL.

syntax:
       INSERT INTO --table_name--  --( field1, field2,...fieldN )--  VALUES  --( value1, value2,...valueN )--;
_______________________________________________________________________________________________________________________________________________________________________________________________
SELECT Statement :
           The MySQL SELECT statement is used to fetch data from the one or more tables in MySQL.
	   We can retrieve records of all fields or specified fields.

Syntax:
       SELECT * FROM --table-name-- WHERE --condition--;       #Displays table based on condition
       SELECT * FROM --table-name--;                           #Displays all columns/entire table 
       SELECT --col-name-- FROM --table-name--;                #Displays selective column 
       SELECT count(*) FROM --table-name--;                    #Displays Count 
       SELECT --col-name(*)-- FROM --table-name--;             #Displays selective column count
_______________________________________________________________________________________________________________________________________________________________________________________________
*/


# Selecting database & table
use my_sql_practice;
select * from my_friends;


# How to insert value into table..?
#  using "INSERT"

# METHOD - 1:  [For all fields]
insert into my_friends values
('Navin','Kahn','M', 29 ,'Maharastra','TL');


# METHOD - 2:  [For selcetive/Partial fields]
insert into my_friends (First_name, Age, City) 
values ('Khatija',34,'Hyderabad');


# METHOD - 3:  [For Multiple records]
insert into my_friends (First_name, Last_name, Sex, City, Designation, Age) 
values ('Khatija','Abar','F','Hyderabad','Sr.SWE',34), 
	   ('Avesh','khan','M','Mumbai','Trainee',43),
	   ('Sujay','Manohar','M','Chennai','SWD',29);
       
#----------------------------------------------------------------------------------------------------------------------------

# How to apply condition to sortlist only female from table..?
Select * from my_friends where Sex = 'F';

#----------------------------------------------------------------------------------------------------------------------------

# How to apply condition to sort by first_name & last_name..?
Select * from my_friends where First_name = 'Sujay' AND Last_name = 'Manohar';
