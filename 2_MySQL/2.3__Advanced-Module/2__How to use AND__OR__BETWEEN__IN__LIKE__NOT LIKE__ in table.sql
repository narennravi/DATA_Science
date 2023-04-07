use my_sql_practice;


#  AND :-
select * from my_friends;
select * from my_friends where age <= '17' and last_name='David';


#  OR :-
select * from my_friends;
select * from my_friends where  age >='20' or location='Trichy';


# BETWEEN:-
select * from my_friends;
select * from my_friends where age between 16 and 17;


# IN:-
select * from my_friends;
select * from my_friends where location in ('Guntur','kerala','Maharastra');


# LIKE:-
select * from my_friends;
select * from my_friends where first_name like '%e%' and last_name like '%a%';


# NOT LIKE:-
select * from my_friends;
select * from my_friends where location not like '%g%' and location not like '%k%';


# NOTE:-
#    1. Where Clause is "mandatory" --> while using  [ AND | OR | BETWEEN | IN | LIKE | NOT LIKE ]
#    2. NOT LIKE is opposite version of LIKE