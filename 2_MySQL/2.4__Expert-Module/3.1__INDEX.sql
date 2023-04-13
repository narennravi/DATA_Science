use my_sql_practice;
explain my_friends_2;

/* INDEX:-
       1. Index keyword is used to generate fast-retrival of querry 
       2. Normal querry takes time while INDEX gives faster result

 Synatx:-
        CREATE INDEX --index_name-- ON --table_name-- (column_name);
*/       
        
        
 # How to create index for existing table..?

 CREATE INDEX ind_lastname ON my_friends_2 (last_name);                     # statement of created index - 'ind_lastname'
 desc my_friends_2;                                                         # displays index-key --> MUL on table
 