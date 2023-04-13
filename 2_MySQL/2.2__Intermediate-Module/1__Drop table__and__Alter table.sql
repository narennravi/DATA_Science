/*
_________________________________________________________________________________________________________________________________________________________________________________________________________
DROP :-
     The SQL DROP TABLE statement is used to remove a table definition and all the data, indexes, triggers, constraints and permission specifications for that table.
     Note: 
           1. Be careful before dropping a table.
           2. Deleting a table will result in loss of complete information stored in the table!

Syntax for Drop :
    DROP TABLE --table_name--;
_________________________________________________________________________________________________________________________________________________________________________________________________________
TRUNCATE :-
     The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.

Syntax for Truncate :
    TRUNCATE TABLE --table_name--;
_________________________________________________________________________________________________________________________________________________________________________________________________________
ALTER :-
     The ALTER TABLE statement is used to add, modify or delete columns in an existing table. It is also used to rename a table.You can also use SQL ALTER TABLE command to add and drop various constraints on an existing table.

Syntax for Alter :
    ALTER TABLE --table_name--  DROP COLUMN --column_name--;
_________________________________________________________________________________________________________________________________________________________________________________________________________
*/

# CREATE new-Table:-
# In existing Database "my_sql_practice" - we created new table "my_friends_1" 

use my_sql_practice;
CREATE TABLE my_friends_1 
(
    First_name VARCHAR(15),
    Last_name VARCHAR(15),
    Sex VARCHAR(1),
    Age INT,
    City VARCHAR(20),
    Designation VARCHAR(30)
);

#-----------------------------------------------------------------------------------------------------------------------
# DROP table:
# Droped the existing table

drop table my_friends_1;

#-----------------------------------------------------------------------------------------------------------------------
# RE-CREATED table:
# again we created table - my_friends_1

CREATE TABLE my_friends_1 
(
    First_name VARCHAR(15),
    Last_name VARCHAR(15),
    Sex VARCHAR(1),
    Age INT,
    City VARCHAR(20),
    Designation VARCHAR(30)
);
desc my_friends_1;   #display table content we created

#-----------------------------------------------------------------------------------------------------------------------
# ALTER table:   [add new column]
# How to add new column-"roll_number" to existing table..?

alter table my_friends_1 add roll_number smallint unsigned;
describe my_friends_1;

#-----------------------------------------------------------------------------------------------------------------------
# ALTER table:   [drop column]
# How to drop specific column-"roll_number"  from existing table..?

alter table my_friends_1 drop roll_number;
describe my_friends_1;

#-----------------------------------------------------------------------------------------------------------------------


