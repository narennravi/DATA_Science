use practice;

#AUTO-INCREMENT:-
#      Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
#      Auto-increment --> we inform sql to handle "id"-column as primary key & generate automatically of unique count(numbering - index) 
#      Auto-increment enables only for "integer" - Numerical__type
#      Auto-increment is considered for each row/record unique value count.
#      Auto-increment always starts from number --> 1

CREATE TABLE myfriends
(
    id int NOT NULL AUTO_INCREMENT,
    last_name   VARCHAR(15) NOT NULL,
    first_name  VARCHAR(15) NOT NULL,
    suffix      VARCHAR(5) NULL,
    sex         VARCHAR(1) NULL,
    city        VARCHAR(20) NOT NULL,
    state       VARCHAR(2) NOT NULL,
    age     int,
     PRIMARY KEY (id)
);

explain myfriends;

INSERT INTO myfriends VALUES('Storm','Wonder',NULL,'F','Hollywood','LA',10);


#NOTE:-
#   It throws error because it has 8-fields in table 
#   But we have only 7-values 
#   SOLUTION:   We have to mention respective column which we wanted to insert respective values


INSERT INTO myfriends(last_name,first_name,suffix,sex,city,state,age) VALUES('motu','super','Mr','M','Mumbai','MH',20);
INSERT INTO myfriends(last_name,first_name,suffix,sex,city,state,age) VALUES('Bali','Bahu','Amer','M','MahilMadi','MM',25);
INSERT INTO myfriends(last_name,first_name,suffix,sex,city,state,age) VALUES('dummy','dummy','dummy','D','DD','MM',25);

Select count(*) from myfriends;            # 3-unique records were inserted to table"myfriends"

select * from myfriends;