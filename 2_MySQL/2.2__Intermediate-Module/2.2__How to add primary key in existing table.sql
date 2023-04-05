#Using "primary-key" = Db & we created new table = "my_orders_1" 

use primary_key;
CREATE TABLE my_orders_1 
(
    order_idy  INT NOT NULL,
    first_name VARCHAR(20) NULL,
    last_name  VARCHAR(20) NOT NULL,
    address    VARCHAR(100) NOT NULL,
    location   VARCHAR(40) NOT NULL
);
desc my_orders_1;      #To display table contents

#--------------------------------------------------------------------------------------------------------------------------------------------
# Type - 1:     [How to alter existing table - "my_orders_1" and place primary key for new field - "mail_idy" ] 

#Inserting null-value in (first_name)  &  showcase fiels of table using "select"
# We alter table by adding new column - (mail_idy) & placing it as Primary_key


insert into my_orders_1 values(45091,'Nancy','Patrick Stella','No:12-B,7th-cross,St.cathedral church road','Chennai');
SELECT * FROM my_orders_1;

alter table my_orders_1 add mail_idy varchar(40) primary key;
explain my_orders_1;

#--------------------------------------------------------------------------------------------------------------------------------------------
# Type - 2:      [Why duplicate-entries were not allowed after placing PRIMARY-kEY...?]

# Inserting value in table(my_orders_1) for 1st-time after placing primary key(mail_idy)
#  Also Trying to insert duplicate value into table
 
 
 insert into my_orders_1 values (89270,'Kadhar','Abdul Rahim','No:18/2, old roypet, nearby GH', 'Chennai-North','kadharabdul1299@mail.com');
 insert into my_orders_1 values (89270,'Kadhar','Abdul Rahim','No:18/2, old roypet, nearby GH', 'Chennai-North','kadharabdul1299@mail.com');
 
 # ____ERROR: Duplicate entry 'kadharabdul1299@mail.com' for key in 'my_orders_1,PRIMARY'____
 # ****REASON :   1. Primary key presented table, won't allow duplicate-entries & recommended --> to have unique/different data_value****

 #--------------------------------------------------------------------------------------------------------------------------------------------
drop table my_orders_1;