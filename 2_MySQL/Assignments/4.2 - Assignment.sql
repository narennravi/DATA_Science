#  QUESTION:-

/*
Consider the table Student.

ID	   NAME	      AGE
1	 Vinodini	 25
2	 Banu    	 27
3	 kaushik 	 23
4	 Praveen 	 25
5	 Kamal   	 22
6	 Malini  	 24
7	 Ramesh  	 32

Display the record(s) who is of age 32 or 22
*/


#  SOLUTION:-
select * from Student;
select * from Student where age=22 or age=32;

select * from Student where age in (22,32);

