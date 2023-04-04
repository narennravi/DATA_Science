use my_sql_practice;

select First_name, Last_name, count(*)
from my_friends
group by First_name, Last_name
having count(*)>1

