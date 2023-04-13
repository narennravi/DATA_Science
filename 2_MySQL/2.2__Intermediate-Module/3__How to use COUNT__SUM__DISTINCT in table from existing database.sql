/*
________________________________________________________________________________________________________________________________________________________________________________________
COUNT :-
       SQL COUNT function is the simplest function and very useful in counting the number of records, which are expected to be returned by a SELECT statement.
       This function is used to count the certain amount of values in the column that have been inserted in the table.

Syntax for Count:
       SELECT count(*) FROM --tablename--;
________________________________________________________________________________________________________________________________________________________________________________________
DISTINCT :-
       SQL DISTINCT keyword is used in conjunction with the SELECT statement to eliminate all the duplicate records and fetching only unique records.
       There may be a situation when you have multiple duplicate records in a table. 
       While fetching such records, it makes more sense to fetch only those unique records instead of fetching duplicate records.

Syntax for Distinct:
        SELECT DISTINCT --column1, column2,.....columnN--  FROM --table_name--  WHERE --condition--;
________________________________________________________________________________________________________________________________________________________________________________________
MAXIMUM :
       Maximum function is used to find maximum value in the certain column in the given table.

Syntax for Maximum :
        SELECT MAX(--column_name--)  FROM  --table_name--;
________________________________________________________________________________________________________________________________________________________________________________________
MINIMUM :
       Minimum function is used to find minimum value in the certain column in the given table.

Syntax for Minimum :
        SELECT MIN(--column_name--)  FROM  --table_name--;
________________________________________________________________________________________________________________________________________________________________________________________
*/


# We created new table = "my_friends_2" in existing database = "my_sql_practice"

use my_sql_practice;
CREATE TABLE my_friends_2 
(
    last_name  VARCHAR(15) NOT NULL,
    first_name VARCHAR(15) NULL,
    suffix     VARCHAR(5) NULL,
    sex        VARCHAR(1) NULL,
    city       VARCHAR(20) NOT NULL,
    state      VARCHAR(2) NOT NULL,
    age        INT
);

#--------------------------------------------------------------------------------------------------------------------------------------

# Now inserting values into table - my_friends_2

INSERT INTO my_friends_2 VALUES('mouse','micky','Mr',NULL,'Chennai','TN',10);
INSERT INTO my_friends_2 VALUES('Storm','Wonder',NULL,'F','Hollywood','LA',10);
INSERT INTO my_friends_2 VALUES('motu','super','Mr','M','Mumbai','MH',20);
INSERT INTO my_friends_2 VALUES('Bali','Bahu','Amer','M','MahilMadi','MM',25);
INSERT INTO my_friends_2 VALUES('Storm','Wonder',NULL,'F','Hollywood','LA',10);
select * from my_friends_2;

# NOTE:-
# Duplicate values were considered bcz we did not use Primary_key - constraint
#--------------------------------------------------------------------------------------------------------------------------------------

 COUNT:-      [How to use count along with condition..?]

#count the data of entire table
select count(*) from my_friends_2; 

#count selective data of column (entire table | first_name | sex) from table    
select count(*), count(first_name), count(sex) from my_friends_2;

# count table using conditional clause - WHERE ---> to display count of "female" from table
SELECT COUNT(*) FROM my_friends_2 WHERE sex='F';

#--------------------------------------------------------------------------------------------------------------------------------------

# SUM:-        [How to total the columns using sum..?]

# age field from table alone totalled and displayed 
# Only int-datatype get sum

select Age from my_friends_2;            # age field alone displayed
SELECT SUM(AGE) FROM my_friends_2;       # sum all data in age-field & displayed

#--------------------------------------------------------------------------------------------------------------------------------------

# DISTICT:-      [How to extract only unique value from table..?]

# By using "Distinct" - **Unique values alone Extracted**
# Generally Data consist of mutiple/Duplicate value 
# Our resposibility to filter only unique values from table - like Data cleaning

INSERT INTO my_friends_2 VALUES('Storm','Wonder',NULL,'F','Hollywood','LA',10);

SELECT FIRST_NAME FROM my_friends_2;                    # display only the first-name of field
SELECT DISTINCT(FIRST_NAME) FROM my_friends_2;          # Here duplicate/multiple values will be removed based on First_name field.

#--------------------------------------------------------------------------------------------------------------------------------------
