#  QUESTIONS:-
/*
Consider the table Student.

ID	NAME	        AGE
1	Vinodini	25
2	Banu    	27
3	kaushik 	23
4	Praveen 	25
5	Kamal   	22
6	Malini  	24
7	Ramesh  	32

1.  Display the name of the individuals whose age is lesser that 25 and greater than 30
*/


# SOLUTIONS: -
select * from Student;
select NAME from Student where AGE < 25 or AGE > 30;
