/* VIEWS:-
		1. Views are like virtual table/Temp table used to display particular data in table for analysing -purpose.
        2. By virtual, we mean, the tables do not store any data of their own but display data stored in other tables.
        3. VIEWS are accessed along with SELECT statement.

 Syntax:-
       CREATE VIEW --view_name-- AS SELECT --statement-- WHERE --condition--;
*/

use my_sql_practice;
desc my_friends;
select * from my_friends;


# How to create view for existing table..?
drop view my_view;                                                     # To check view-name is new/existing
create view my_view as select * from my_friends where sex='M';         # statement of created-view'my_view' who mets condition sex='M"

select * from my_view;                                                 # virtual table-view of 'Male-candidates'


# How to insert values into view-statement(existing)...?
insert into my_view(first_name,last_name,sex,age,location) values('Spider','Man','M',27,'Hollywood');       # 'spiderMan' is inserted into virtual-table using  _view_
select * from my_view;                                                                                      # To view inserted-value 

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/* ALTER VIEW:-
          1. Alter view is used to make changes/update in view statement
          
  Syntax:-
        ALTER VIEW --view_name-- AS
        SELECT --column-name--
        FROM --table-name--
        WHERE --condition-- ;
  */      

 # How to alter view statement..?
 alter view my_view as select location from my_friends where age='17';         # Alter-view: we selected location who have age=17 gets stored in view
 select * from my_view;
       
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
       
/* UPDATE VIEW:-
		1. You can modify definition of a VIEW in MySQL without using the ALTER VIEW statement.
        2. This is Simpler method compared to alter-view
        
  Synatx:-
        UPDATE --view-name-- 
        SET --update-statement-- 
        WHERE --condition--;
*/
select * from my_friends;

drop view my_view_2;
create view my_view_2 as select * from my_friends;

insert into my_view_2(first_name,last_name,sex,age,location) values('Ant','Man','M',27,'Marvel');
insert into my_view_2(first_name,last_name,sex,age,location) values('Bat','man','M',35,'DC-universe'); 
insert into my_view_2(first_name,last_name,sex,age,location) values('Wonder','Women','F',32,'DC-universe');
insert into my_view_2(first_name,last_name,sex,age,location) values('Iron','man','M',38,'Marvel');
insert into my_view_2(first_name,last_name,sex,age,location) values('Super','Man','M',39,'DC-universe');

select * from my_view_2;


# Update statement
update my_view_2 set first_name='Super' where last_name='Women';        # We updated as 'Super' from 'Wonder' where last_name ends as Women
select * from my_view_2;                                                # Updated view 

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/* Drop VIEW:-
           Drop view used to check for existing view is present or not

  Syntax:-
        DROP VIEW --view_name--;
*/

# How to drop the view [if-exists]..?
drop view my_view_2;             
drop view my_view;

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
