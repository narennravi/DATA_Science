/*  
UPDATE:-
     1. The SQL UPDATE Query is used to modify the existing records in a table. 
     2. You can use the WHERE clause with the UPDATE query to update the selected rows, otherwise all the rows would be affected.

Syntax :
      UPDATE --table_name-- SET  column1 = value1, column2 = value2...., columnN = valueN  WHERE --condition--;
____________________________________________________________________________________________________________________________________________________________________________
DELETE:-
      1. The SQL DELETE Query is used to delete the existing records from a table.
      2. You can use the WHERE clause with a DELETE query to delete the selected rows, otherwise all the records would be deleted.

Syntax:
     DELETE FROM --table_name-- WHERE --condition--;
____________________________________________________________________________________________________________________________________________________________________________

*/

use my_sql_practice;
select * from my_friends_2;


#    1. UPDATE:-

UPDATE my_sql_practice.my_friends_2
SET last_name='dummy', first_name='value'
WHERE age=10;

select * from my_friends_2;
select first_name,last_name from my_friends_2;


# NOTE:-
#     1. while using UPDATE & DELETE statement make sure you're using "WHERE"-clause
#     2. Because it may affect entire Column [if you didn't use 'WHERE' conditional_clause]
#     3. Also WARNING will appear

#----------------------------------------------------------------------------------------------------------------------------------------------

#    2. DELETE:-

select * from my_friends_2;

DELETE from my_friends_2 
where first_name = 'super';         # Here first_name='super' record alone will be deleted.

select * from my_friends_2;

select last_name as parent_name from my_friends_2;     # For temporary purpose last-name ----change into----> parent_name 
select * from my_friends_2;

#----------------------------------------------------------------------------------------------------------------------------------------------

# NOTE:-
#      ERROR 1175: ** You are using safe update mode & you tried to update table without WHERE clause **
#      SOLUTION:-  
      /*	Go to Edit --> select Preferences --> click SQL-editor --> In bottom window --> 
                ---> [Untick the box] = " Reject UPDATEs & DELETEs with no restrictions "        */
