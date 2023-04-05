# PRIMARY-KEY:-
# we created separate db = 'primary_key' & we access primary_key db for creating new table = 'my_orders' 

create database primary_key;
use primary_key;

CREATE TABLE my_orders 
(
    order_idy  INT NOT NULL,
    first_name VARCHAR(20) NOT NULL PRIMARY KEY,
    last_name  VARCHAR(15) NOT NULL,
    address    VARCHAR(100) NOT NULL,
    location   VARCHAR(40) NOT NULL
);
explain my_orders;     #To display table contents

#After execution you find _"Pri"_ in key section



#-------------------------------------------------------------------------------------------------------------------------------------------
# Type - 1  ------>   [Why duplicate-entries were not allowed while using PRIMARY-kEY...?]

# Inserting value in table for 1st-time after placing primary key
#  Trying to insert duplicate value into table
 
 insert into my_orders values (127845, 'Louis', 'philip', '3-B, 4th cross, Fern_apartments', 'California');
 insert into my_orders values (127845, 'Louis', 'philip', '3-B, 4th cross, Fern_apartments', 'California');
 
 # ____ERROR: Duplicate entry for key in my_orders____
 # ****REASON :   1. Primary key present in table so it won't allow duplicate-entries & recommended --> to have unique/different data_value****

#-------------------------------------------------------------------------------------------------------------------------------------------
# Type - 2  ------>   [Why NULL-value is not considered in PRIMARY-KEY(column)...?]

# Inserting value in table by sending "NULL" value - primary key(first_name)

insert into my_orders values (127845, null, 'philip', '3-B, 4th cross, Fern_apartments', 'California');

# ____ERROR: Column first_name can't be null-value____
# ****REASON :   2. Primary key present in table so it won't allow Null-value & its recommended --> to have not-null data_values

#-------------------------------------------------------------------------------------------------------------------------------------------

drop table my_orders;
 