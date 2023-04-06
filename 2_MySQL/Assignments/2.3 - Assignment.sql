#QUESTION:-
  /*Create a table student with appropriate fields and insert values into it.
  Display the number of records in that table and also display the distinct records of it*/


#SOLUTION:-
  CREATE DATABASE practice;
  USE practice;
  
  CREATE TABLE student
    (
     first_name varchar(25),
     last_name varchar(15),
     sex varchar(2),
     age int,
     location varchar(20)
    );
    
INSERT INTO student VALUES('Anil','kumar','M',17,'Maharastra');
INSERT INTO student VALUES('Nagendraa','Reddy','M',18,'Guntur');
INSERT INTO student VALUES('Kavitha','Ramasamy','F',17,'Trichy');
INSERT INTO student VALUES('Jenifer','David','F',16,'kerala');
INSERT INTO student VALUES('Anil','kumar','M',17,'Maharastra');
INSERT INTO student VALUES('Kavitha','Ramasamy','F',17,'Trichy');

SELECT * FROM student;
SELECT count(*) FROM student;

SELECT DISTINCT(first_name) FROM student;