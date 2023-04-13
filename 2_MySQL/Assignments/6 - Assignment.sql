/*
QUESTION: 1
     Create the table 'Employee' with the Fields ID , NAME , AGE and Assign AUTOINCREMENT to the field ID.
*/

# SOLUTION - 1 :
CREATE TABLE Employee
    (
     ID   int NOT NULL AUTO_INCREMENT,
     NAME varchar(25) NOT NULL,
     AGE  int
    );
#--------------------------------------------------------------------------------------------------------------------------------------------------
/*
QUESTION: 2
     Create a view from the table Employee(ID , NAME , AGE) with only name column in the view created.
*/

# SOLUTION - 2 :
CREATE VIEW my_view as SELECT (NAME) from Employee;
#--------------------------------------------------------------------------------------------------------------------------------------------------
/*
QUESTION: 3
     Create the Index for the table GUVI and drop it.
*/

# SOLUTION - 3 :
# Created index(ind_new) - Table "GUVI"
CREATE INDEX ind_new on GUVI(name,mail,score,Placement_status);

# Droped index(ind_new)
ALTER TABLE GUVI
DROP INDEX ind_new;
#--------------------------------------------------------------------------------------------------------------------------------------------------
