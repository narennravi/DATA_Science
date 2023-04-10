#  Displays the CURRENT_TIME of PC/System:-
select curtime();       #(or)
select current_time();


#  Displays CURRENT_DATE of PC/System:-
select curdate();       #(or)
select current_date();


#  Only DATE-filtered:-
SELECT DATE("2022-09-08 00:10:16");


#  Only TIME-filtered:-
SELECT TIME("2022-09-08 00:10:16");


#  Based on days-count date will be generated:-
SELECT from_days('730677');


#  Display date with particular format:-
SELECT DATE_FORMAT(curdate(), '%d/%m/%y');                # Current_date will displayed --> dd/mm/yy/
SELECT DATE_FORMAT(('2015-09-10'), '%M %D %Y');           # Given date will be displayed as --> September 9th 2010
