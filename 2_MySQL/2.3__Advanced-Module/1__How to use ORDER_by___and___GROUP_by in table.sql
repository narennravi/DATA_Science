use my_sql_practice;

CREATE TABLE my_friends
    (
     first_name  varchar(25),
     last_name   varchar(15),
     sex         varchar(2),
     age         int,
     location    varchar(20)
    );

insert into my_friends 
values
     ('Kavitha','Ramasamy','F',17,'Trichy'),
     ('Nagendraa','Reddy','M',18,'Guntur'),
     ('Jenifer','David','F',16,'kerala'),
     ('Syed','fazil','M',20,'Nagore'),
     ('Anil','kumar','M',17,'Maharastra'),
     ('Tamilarasu','Meyapan','M',23,'Madurai');

select * from my_friends;
  
#x------------x--------------x--------------x----------------x-----------------x----------------x----------------x----------------x
#  ORDER BY:-
/*     1. Order by is similar to sorting of data either by single column/multiple columns.
       2. Order by is of two types:-
             DESC - Descending order
             ASC  - Ascending order
             
   Syntax:
        SELECT  --column-names--  FROM --table_name--  WHERE --condition--  ORDER BY ---column1, column2, .. columnN---  ASC;     --->  "Ascending order"
        SELECT  --column-names--  FROM --table_name--  WHERE --condition--  ORDER BY ---column1, column2, .. columnN---  DESC;    --->  "Descending order"
*/     


# Order_by ------> [SINGLE column]:-

# Entire Table is sorted/order by "First_name" --> Default it consider as Ascending order
select * from my_friends order by first_name;
select * from my_friends order by first_name, location;

# Particular Field/Column from table is order by "age" - descending wise  
select first_name from my_friends order by age DESC;

#-----------------------------------------------------------------------------------------------------------------------------------
# Order_by + Limit  ----> [SINGLE columns]:-

# Entire columns from Table - sorted by first_name in Ascending_order [Default]   &   Limited to display only "4 - Records/Row"
select * from my_friends order by first_name limit 4;

# column (first_name) - sorted by age in descending order   &   Limited to display only "2 - Records/Row"
select first_name from my_friends order by age DESC limit 2;

#-----------------------------------------------------------------------------------------------------------------------------------
# Order_by ------> [MULTIPLE columns]:-

# columns (first_name, age) - sorted in descending order
select first_name,age from my_friends order by first_name DESC, age DESC; 

#-----------------------------------------------------------------------------------------------------------------------------------
# Order_by + Limit  ----> [MULTIPLE columns]:-

# columns (first_name, age) - sorted in descending order   &   Limited to display only "3 - Records/Row"
select first_name,age from my_friends order by first_name DESC, age DESC LIMIT 3;

#x------------x--------------x--------------x----------------x-----------------x----------------x----------------x----------------x
#  GROUP-BY:-
/*        1. Group-by is used to group the rows which have same-value & pick up data
          2. It is also used to Differentiate and filter the records based on Sex, salary, location     
          
   Syntax:-
        SELECT --statements-- FROM --table-name-- GROUP BY --column-name--;                         # Without Having - condition
        SELECT --statements-- FROM --table-name-- GROUP BY --column-name-- HAVING --condition--;    # With Having - condition
*/


select * from my_friends;

# Column (sex = Female & Male) - both gender is group_by asceneding order {default}   &   Display count of gender [Ascending]
select count(sex) from my_friends group by sex;

#x------------x--------------x--------------x----------------x-----------------x----------------x----------------x----------------x
