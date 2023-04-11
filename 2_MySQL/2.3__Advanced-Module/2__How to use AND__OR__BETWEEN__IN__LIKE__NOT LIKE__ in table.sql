/*
AND, OR and NOT Operators:-
             The WHERE clause can be combined with AND, OR, and NOT operators.
             The AND and OR operators are used to filter records based on more than one condition:

            1. AND operator ---->  displays a record if all the conditions separated by AND are TRUE.
            2. OR operator  ---->  displays a record if any of the conditions separated by OR is TRUE.
            3. NOT operator ---->  displays a record if the condition(s) is NOT TRUE.
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

Syntax  [AND]:-
          SELECT column1, column2, ...
          FROM table_name
          WHERE condition1 AND condition2 AND condition3 ... conditionN;
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
          
Syntax  [OR]:- 
          SELECT column1, column2, ...
          FROM table_name
          WHERE condition1 OR condition2 OR condition3 ... conditionN;
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

Syntax  [NOT]:-
          SELECT column1, column2, ...
          FROM table_name
          WHERE NOT condition
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

BETWEEN Operator:-
         BETWEEN operator selects values within a given range.The values can be numbers, text, or dates.
         BETWEEN operator is inclusive--> begin and end values are included.
         While performing Between operator using "WHERE-clause" is easier to understand & do specific task.

Syntax [BETWEEN]:-           
         SELECT column_name(s)
         FROM table_name
         WHERE column_name BETWEEN value1 AND value2;                    #Here value1 ---> begin position   &   value2 ---> end position
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

IN Operator:-
        The IN operator allows you to specify multiple values in a WHERE clause.
        The IN operator is a shorthand for multiple OR conditions.

Syntax  [IN]:-
        SELECT column_name(s)
        FROM table_name
        WHERE column_name IN (value1, value2, ... valueN);
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

LIKE Operator:-
        LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
        There are two wildcards often used in conjunction with the LIKE operator:

              1.percent sign (%) represents zero, one, or multiple characters
              2.underscore sign (_) represents one, single character
              3.percent sign and the underscore can also be used in combinations!

Syntax  [LIKE]:-
        SELECT column1, column2, ...
        FROM table_name
        WHERE columnN LIKE pattern;
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
*/


use my_sql_practice;

#  AND :-
select * from my_friends;
select * from my_friends where age <= '17' and last_name='David';


#  OR :-
select * from my_friends;
select * from my_friends where  age >='20' or location='Trichy';


# BETWEEN:-
select * from my_friends;
select * from my_friends where age between 16 and 17;


# IN:-
select * from my_friends;
select * from my_friends where location in ('Guntur','kerala','Maharastra');


# LIKE:-
select * from my_friends;
select * from my_friends where first_name like '%e%' and last_name like '%a%';


# NOT LIKE:-
select * from my_friends;
select * from my_friends where location not like '%g%' and location not like '%k%';


# NOTE:-
#    1. Where Clause is "mandatory" --> while using  [ AND | OR | BETWEEN | IN | LIKE | NOT LIKE ]
#    2. NOT LIKE is opposite version of LIKE
