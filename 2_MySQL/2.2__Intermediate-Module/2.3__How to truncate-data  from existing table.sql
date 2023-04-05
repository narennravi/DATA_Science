#Using "primary-key" = Db & we created new table = "my_orders_2" 

use primary_key;
CREATE TABLE my_orders_2 
(
    order_idy  INT NOT NULL,
    first_name VARCHAR(20) NULL,
    last_name  VARCHAR(20) NOT NULL,
    address    VARCHAR(100) NOT NULL,
    mail_idy   VARCHAR(40) NOT NULL
);
desc my_orders_2;      #To display table contents

#---------------------------------------------------------------------------------------------------------------------------------------------
#Type - 1:     [How truncate is done during multiple(duplicate) entries of data in table..?]
# Truncate - used to delete datas inside table and not entire table 
# drop - used to delete entire table & data also


insert into my_orders_2 values
   (45091,'Amulraj','Stalin','No:12-B,7th-cross,St.marry school-road,Chennai','amulrajs171098@mail.com'),
   (45091,'Amulraj','Stalin','No:12-B,7th-cross,St.marry school-road,Chennai','amulrajs171098@mail.com');
select * from my_orders_2;

truncate table my_orders_2;
select * from my_orders_2;

#---------------------------------------------------------------------------------------------------------------------------------------------
drop table my_orders_2;
