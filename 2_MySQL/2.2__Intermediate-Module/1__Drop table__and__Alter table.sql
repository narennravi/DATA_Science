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


