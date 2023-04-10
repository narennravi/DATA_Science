# QUESTION: 1
/*
Write a query to get the DATE value from a given day (number in N).

Sample days: 730677
Output: 2000-07-11
*/


# SOLUTION-1 :-

SELECT from_days('730677');
#--------------------------------------------------------------------------------------------------------------------------------------------

# QUESTION: 2
/*
Write a query to get the current date in the following format.

Sample date : 2015-09-10
Output : September 10, 2015
*/


# SOLUTION-2 :-

SELECT DATE_FORMAT(('2015-09-10'), '%M %D %Y');
#--------------------------------------------------------------------------------------------------------------------------------------------

# QUESTION: 3
/*
Write a query to display the current date in a given format.

Sample output : 05/09/2014
*/


# SOUTION-3 :-

SELECT DATE_FORMAT(curdate(), '%d/%m/%y');
#--------------------------------------------------------------------------------------------------------------------------------------------
