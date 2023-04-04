# LIST Comprehension:-

#  It means we are shortening 3(or)4 - lines of program in single line
#  List comprehension offers a shorter syntax when you want to create a new list based on the values of an existing list.
#  Example:-
#         Based on a list of fruits, you want a new list, containing only the fruits with the letter "a" in the name.


# Where we use List_comprehension..?
#    Data Analysis / Data Scientist
#    Machine Learning


# What is list-comprehension in point of beginner perspective..?
#     Applying condition_statements (or) for_loop inside list in single line is called List-comprehension


# [------without LIST_COMPREHENSION------]
# Traditional way of for-loop:-

movies = ['Kaithi','Maanagaram','Vikram','Master','Leo']
result = []

for x in movies:
    if 'a' in x:
        result.append(x)

print("Movie-list which consist of vowel 'a' displayed: \n",result)
print("-----------------------------------------------------------------------------------")



# [------with LIST_COMPREHENSION------]
# for-loop in list-comprehension :-

movies = ['Kaithi','Maanagaram','Vikram','Master','Leo']
simple_result = [x for x in movies if 'a' not in x]

print("Movie-list which don't have 'a'-word will displayed: \n",simple_result)
print("-----------------------------------------------------------------------------------")



# if in list-comprehension:-
#picking-up 5-15 number from range(20) ?

certain_num = [i for i in range(20) if 5 <= i <= 15]
print("From an range(20) 5-15 gets display: \n",certain_num)
print("-----------------------------------------------------------------------------------")



# if-else in list-comprehension:-
#Print 'Odd' in odd position & 'Even' in even position ?

num_1 = ['Even' if n1%2==0 else 'odd' for n1 in range(1,11)]
print("Check Odd/even for range(11): \n",num_1)
print("-----------------------------------------------------------------------------------")



# keyword in list-comprehension:-
#How to convert Upper/lower using List-Comprehension ?

fruits = ['Banana','orange','kiwi','apple','cherry']

uppercase = [u.upper() for u in fruits]
lowercase = [l.lower() for l in fruits]
print("Capital--> ",uppercase,'\n',"Small--> ",lowercase)
print("-----------------------------------------------------------------------------------")



# nested-if in list-comprehension:-
# How to get multiple of 2 and 3 ?

num = [n for n in range(50) if n%2==0 if n%3==0]
print("Display Multiples of 2 and 3 within range(50): \n",num)
print("-----------------------------------------------------------------------------------")



# nested for-loop in list-comprehension:-
# How to Print 2-table ?

print("Multiples of 2-table:- \n")
for i in range(2,3):
    for j in range(1,11):
        print(f'{i}*{j}={i*j}')
print("-----------------------------------------------------------------------------------")
