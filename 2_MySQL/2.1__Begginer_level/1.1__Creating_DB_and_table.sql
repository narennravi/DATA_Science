# Creating Database:
Create database my_sql_practice;
select Database();
use my_sql_practice;


# NOTE:-
# After creating database make sure u have connected to database 
# Q: How to connect database..?
# A: click "Database"-menu --> Then  select "connect to database" 


# Inside Database we created table:
create table my_friends
(
    First_name   varchar(15) not null,
    Last_name    varchar(15) not null,
	Sex          varchar(1) null,
    Age          int,
    City         varchar(20) not null,
    Designation  varchar(30) not null
);