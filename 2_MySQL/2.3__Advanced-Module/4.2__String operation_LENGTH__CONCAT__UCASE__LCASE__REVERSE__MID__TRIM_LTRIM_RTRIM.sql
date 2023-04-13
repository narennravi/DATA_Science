/*
String Functions :
           1. MySQL string functions we can use to manipulate data and derive useful information and analysis from the tables. 
           2. These functions can be used along with update commands to change records or can be used to update multiple tables.

__________________________________________________________________________________________________________________________________________________________________________
CONCAT:-
      Combines two strings into one string

Syntax:
     SELECT CONCAT(--existing-columns--)  AS  --new-col-name--  from  --table-name--;
__________________________________________________________________________________________________________________________________________________________________________
LENGTH:-
      Displays length of selective column

Syntax:
     SELECT LENGTH(--existing-columns--)  AS  --new-col-name--  from  --table-name--; 
__________________________________________________________________________________________________________________________________________________________________________
LOWER:-
      Converts a String to Lowercase.

Syntax:
     SELECT LOWER('-string-')  from  --table-name--; 
__________________________________________________________________________________________________________________________________________________________________________
UPPER:-
     Converts a String to Uppercase.

Syntax:
     SELECT  UPPER('-string-')  from  --table-name--; 
__________________________________________________________________________________________________________________________________________________________________________
MID:-
    Extracts a substring from a string (starting at any position)

Syntax:
     SELECT  MID('-string-', 5, 3)  AS  --(extract)_col-name--  from  --table-name--; 
__________________________________________________________________________________________________________________________________________________________________________
TRIM:-
     Trims the particular blank-space/white-space  based on sides=(ledt | right | Both)

Syntax:
      SELECT  TRIM(--col-name--) AS  --new-col-name--  from  --table-name--;     =  Trim(Left+Right)
      SELECT  LTRIM(--col-name--) AS  --new-col-name--  from  --table-name--;    =  Left trim
      SELECT  RTRIM(--col-name--) AS  --new-col-name--  from  --table-name--;    =  Right Trim
__________________________________________________________________________________________________________________________________________________________________________
REVERSE:-
      Displays Reveresal form of selected column

Syntax:
      SELECT REVERSE(--col-name--) AS  --new-col-name--  from  --table-name--;
__________________________________________________________________________________________________________________________________________________________________________
*/



use my_sql_practice;
select * from my_friends;
 
#----------------------------------------------------------------------------------------------------------------------------------------------------------
#  CONCAT:-     [first_name + last_name = full_name]
select concat(first_name , last_name) as full_name from my_friends;

#----------------------------------------------------------------------------------------------------------------------------------------------------------
#  LENGTH:-
select first_name from my_friends;
select length(first_name) as length from my_friends;                         # Length of first_name is counted & Stored at "length" - new_column


select * from my_friends;
select length(concat(first_name,last_name)) as full_name_len from my_friends;    #Length of concatenated value from col-"full_name_len" is displayed

#----------------------------------------------------------------------------------------------------------------------------------------------------------
#  LOWER-case:-      [lower | lcase]

select last_name from my_friends;
select lower(last_name) from my_friends;                  #last_name is converted into "LOWER_CASE"
# (or)
select lcase(last_name) from my_friends;               
 
select LOWER(first_name) as f_name_lower from my_friends;    #first_name is converted to "LOWER_CASE" & stored in temporary col-"f_name_lower"

#----------------------------------------------------------------------------------------------------------------------------------------------------------
#  UPPER-case:-      [upper | ucase] 

select last_name from my_friends;
select upper(last_name) from my_friends;                  #last_name is converted into "UPPER_CASE"
# (or)
select ucase(last_name) from my_friends;               
 
 
select first_name from my_friends;
select UPPER(first_name) as f_name_Upper from my_friends;    #first_name is converted to "UPPER_CASE" & stored in temporary col-"f_name_upper"

#----------------------------------------------------------------------------------------------------------------------------------------------------------
#  MID:-           [similar to slicing]

select location from my_friends;
select mid(location,1,4) as slice_location from my_friends;   #1st four letter from "location" stored in col-'slice_location' & displayed

#----------------------------------------------------------------------------------------------------------------------------------------------------------
#  TRIM:-

SELECT ltrim(first_name) as fname_ltrim from myfriends;      #left-side unwanted space will be removed
SELECT rtrim(first_name) as fname_rtrim from myfriends;      #right side unwanted space will be removed
SELECT trim(first_name) as fname_trim from myfriends;       #all unwanted space(left + right) will removed

# NOTE:
#   trim/rtrim/ltrim(first_name) ---> first_name column is undergoing ltrim-process
#   full_name                    ---> after Trim value stored into 'Full_name'(temporary-col)

#----------------------------------------------------------------------------------------------------------------------------------------------------------
#   REVERSE:-

select location from my_friends;
select reverse(location) as location_rev from my_friends;      #location is reveres & stored into 'location_rev'(temp-col)

#NOTE:-
#    temp-column won't affect/alter table-value & its used only once during execution
#----------------------------------------------------------------------------------------------------------------------------------------------------------

