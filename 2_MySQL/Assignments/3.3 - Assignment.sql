# QUESTIONS:-
/*
1. Create a table student with appropriate fields and insert values into it.
2. Display the number of records in that table and also display the distinct records of it
*/


# SOLUTIONS - 1 :
CREATE table student
   (
    id       int,
    name     varchar(20),
    sex      varchar(6),
    Ranking  int,
    Address  varchar(30)
   ); 

INSERT into student 
VALUES  (1,'Kavin','Male',5,'Adyar'),
        (2,'Zulfia','Female',7,'Vadapalani'),
        (3,'Fernadez','Male',4,'Egmore'),
        (4,'Mahavir','Male',2,'T-Nagar'),
        (5,'Sumitra','Female',3,'Tambaram'),
        (6,'Fernadez','Male',4,'Egmore'),
        (7,'Kavin','Male',5,'Adyar'),
        (8,'saraniya','Female',1,'Avadi');
        
SELECT * from student;


# SOLUTION - 2 :
SELECT count(*) from student;

SELECT DISTINCT(name) from student;