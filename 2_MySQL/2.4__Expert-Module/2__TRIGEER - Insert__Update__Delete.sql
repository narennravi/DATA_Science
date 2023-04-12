/*
What is Trigger...?
		A trigger is a named database object that is associated with a table, and
it activates when a particular event (e.g. an insert, update or delete) occurs for the table. 

Trigger - Variants:-
       1. Insert Trigger - Inserting values into Table-1 & trigger process for rest of table/selective table -->[Table-2,..Table-N]
       2. Update Trigger - Updating value into Table-1 & trigger process for rest of table/selective table -->[Table-2,..Table-N]
       3. Delete Trigger - Deleting value into Table-1 & trigger process for rest of table/selective table -->[Table-2,..Table-N]
       
# NOTE:-
       For INSERT  &  UPDATE  ---> we use = "NEW.col_name"     ___@  VALUEs in Trigger Statement
       for    DELETE          ---> we use = "OLD.col_name"     ___@  VALUEs in Trigger Statement
       
       *** Reason:  
              1. INSERT & UPDATE    its under-process (present-tense) -->   NEW
              2.     DELETE         its completed      (past-tense)   -->   OLD
*/


create database Trigg;
use Trigg;

# We use drop_table statement ---> to check whether Table_name is exist or not  [Table-1]
drop table Table_1;

# Table-1 is created
create table Table_1
  (
   first_name varchar(20),
   last_name  varchar(25),
   suffix     varchar(5),
   age        int,
   city       varchar(20)
  );
  
# We use drop_table statement ---> to check whether Table_name is exist or not  [Table-2]
drop table Table_2;

# Table-2 is created
create table Table_2
  (
   first_name  varchar(20) not null,
   city        varchar(25) not null,
   username    varchar(20) not null,
   modify_time timestamp
  );
  
# NOTE:-
#    Before using Trigger truncate/check its empty-set of tables [for 1st Table]
  
select * from Table_1;
select * from Table_2;
  
#------------x-------------x-------------x-------------x------------x------------x-----------x-------------x-----------x----------x---------x--------x
#  1.  CREATE Trigger ___[INSERT]___:-
  
  
truncate table Table_1;
drop trigger ins_trigger;

# Insert trigger statement which (Inserts/adds) in Table-1,  will reflected/repeated to Table-2 record + **[NEW]-->Keyword**  
CREATE TRIGGER ins_trigger 
before insert on Table_1
for each row insert into Table_2 values(NEW.first_name, NEW.city, USER(), NOW());
  
select * from Table_1;                     # Before Insertion - Table view
select * from TAble_2;

# Inserting Values
insert into Table_1(first_name,last_name,suffix,age,city) values('Tom','Jerry','Mr',28,'Disney_island');
insert into Table_1(first_name,last_name,suffix,age,city) values('Jackie','Jhan','Mr',15,'Taiwan');
insert into Table_1(first_name,last_name,suffix,age,city) values('Poppie','The sailor','Mrs',30,'Disney_island');

select * from Table_2;                     # After Insertion - Table view
select * from TAble_1;


/*  NOTE:-
       Insert Trigger - value which we Inserted only in Table-1, gets reflected & triggered into Table_2
       We inserted fresh values of 3-records(Tom, jackie, Poppie) in Table-1 only.
       The values which we inserted @Table-1 reflected & Triggered(inserted) into Table-2 also. 
 */
#------------x-------------x-------------x-------------x------------x------------x-----------x-------------x-----------x----------x---------x--------x
#  2.  CREATE Trigger ___[UPDATE]___:-


# We use drop_trigger statement ---> to check whether Trigger_name"upd_trigger" is exist or not  @__[UPDATE]
drop trigger upd_trigger;

select * from Table_1;                    # Before Updation - Table view
select * from TAble_2;

# Update trigger statement which (update/changes) in Table-1,  will reflected/repeated to Table-2 record  + **[NEW]-->Keyword**
create trigger upd_trigger 
before update on Table_1
for each row insert into Table_2 values(NEW.first_name, NEW.city, USER(), NOW());

# Updating values
update Table_1 set first_name='Richyy',last_name='Rich' where age=15;

select * from Table_2;                    # After Updation - Table view
select * from TAble_1;


/* NOTE:-
      Update Trigger - value which we updated/made changes only in Table-1, gets reflected & triggered into Table_2
      We Updated record 'Richy Rich' instead of 'Jackie Jhan' in Table-1 only.
      The updated values in Table-1 got reflected & triggered(updated) into Table_2 also.      
*/
#------------x-------------x-------------x-------------x------------x------------x-----------x-------------x-----------x----------x---------x--------x
#  3.  CREATE Trigger ___[DELETE]___:-

# We use drop_trigger statement ---> to check whether Trigger_name"del_trigger" is exist or not  @__[DELETE]
drop trigger del_trigger;

select * from Table_1;                        # Before Updation - Table view
select * from TAble_2;

# Delete trigger statement which (Deletes) in Table-1,  will reflected/repeated to Table-2 record  + **[OLD]-->Keyword**
create trigger del_trigger 
before delete on Table_1
for each row delete from Table_2 
where city=OLD.city;

# Deleting values
delete from Table_1 where first_name='Richyy' and city='Taiwan';

select * from Table_2;                        # After Updation - Table view
select * from TAble_1;


/* NOTE:-
      Delete Trigger - value which we Deleted only in Table-1, gets reflected & triggered into Table_2
      We Deleted record 'Taiwan'-location in Table-1 only.
      The deleted values in Table-1 got reflected & triggered(Deleted) into Table_2 also.      
*/
#------------x-------------x-------------x-------------x------------x------------x-----------x-------------x-----------x----------x---------x--------x

SHOW Triggers;                           #Display all trigger named contents.
