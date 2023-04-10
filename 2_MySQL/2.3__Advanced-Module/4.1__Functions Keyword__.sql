#LOWER-case:-
select lower('SQL is Awesome.!');
select lcase('Sql is AWESOME.,');


#UPPER-case:-
select upper('welcome user');
select ucase('Welcome User');


#MID function:-
select mid('My name is Raju..!',1,7);                       #String-value from position -> 1 to 7 displayed
select mid('SQL is interesting',11,6) as extractstring;     #From position 11 onwards---> next 6 value alone extracted in col-name='extractstring'

# NOTE:-
# Mid ---> space is also considered as part value.


#CONCAT:-
select concat('kaviya  ','Madhavan') as concated_value;     #Two separate strings get concatinated(combined) as 1-string in col-name="concated_value"


#LENGTH:-
select length('Shiva loves Sakthi');        #Displays length of string + space is also included during count of sting.


#REVERSE:-
select reverse('Madhya_pradesh');          #String will be reversed


#TRIM:-
select ltrim('   Rajesh_kannan ');                 #ltrim --> left side unwanted space will be removed
select rtrim('kavitha_lakshmi    ');               #rtrim --> right side unwanted space will be removed
select trim('    hi sir good to meet you..!  ');   #trim  --> all unwanted space(left + right) will removed