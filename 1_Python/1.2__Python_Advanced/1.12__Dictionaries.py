#DICT:-   [Ordered, Changeable and doesn't allow duplicates]

#   Dictionaries are written with curly brackets ---> {'keys':'values'}
#   Dictionaries are used to store data values in key:value pairs.
#   Dictionaries hold Different datatype - Numeric stuffs, String, boolean, dict, list, tuple, etc.,
#      1. Dict is "Mutable/Changeable" -- [data in dictionary can be modified]
#      2. Dict follows "Un-ordered" sequence
#      3. Dict won't allow duplicate value

#NOTE:-
#  Dict is not accessed by index-position
#  Dict is accessed only by using "key-name"

#What are the dictionary - format ..?
# TYPE - 1
samp_dict_1 = {'name': 'xyz', 'age': 20, 'score': 78, 'roll_no':'17ME_105'}

# TYPE - 2
samp_dict_2 = {
               'name': 'xyz',
               'age': 20,
               'score': 78,
               'roll_no':'17ME_105'
              }


my_dict={'name':'VIJAY', 'age':49, 'Movies':67}
print(my_dict)
print(type(my_dict))
print("------------------------------------------------------------------------------------------------------------")

#KEYS:-
print(my_dict.keys())                      # Display keys alone
print(type(my_dict.keys()))
print("------------------------------------------------------------------------------------------------------------")

#VALUES:-
print(my_dict.values())                    # Display values alone
print(type(my_dict.values()))
print("------------------------------------------------------------------------------------------------------------")

#ITEMS:- {both --> keys & values}
print(my_dict.items())                     # Display items in list format
print(type(my_dict.items()))
print("------------------------------------------------------------------------------------------------------------")


#NOTE:-
# Dictionary always used to take last-updated values
# Here we given same key-value = {'score': } multiple times let's see what it responds


#What happens if we give duplicate "key" with different "value"...?
samp_dict_3 = {'name': 'xyz',
               'age': 20,
               'score': 78,
               'roll_no':'17ME_105',
               'score':85}
print(samp_dict_3)
print(len(samp_dict_3))                    #Length of dict
print("x----------x------------x-------------x---------------x-----------x------------x------------x--------------x-")


#ACCESS:-
#How to access any particular value..?
#   1. Standard Array/list style - access
#   2. function style .get() - access

my_dict_1 ={
            'name':'Michael_Rayappan',
            'mail':'xyz@gmail.com',
            'Roll_num': 612619,
            'subjects':['Maths','English','Tamil','Science','Social'],
            'Percent':'95%'
           }

#   1. Standard Array/list style:
x = my_dict_1['name']                   #accessing particular key --> to display the value [stand method]
print("Standard array/list style - access: \n",x)

print("\n")

#   2. function style:
x = my_dict_1.get("name")               #accessing particular key --> to display the value [.get() function method]
print(".get() function style - access: \n",x)
print("x--------------x---------------x--------------x-------------x---------------x--------------x----------------x")


#UPDATE:-
#SINGLE Value - Updation
#How to update single-value in dictionary..?
#  1.Standard array/list - updation
#  2.Function .update() - updation

my_dict_1 ={
            'name':'Michael_Rayappan',
            'mail':'xyz@gmail.com',
            'Roll_num': 612619,
            'subjects':['Maths','English','Tamil','Science','Social'],
            'Percent':'95%'
           }

#  1.Standard array/list - Single updation
my_dict_1['name']='BIGIL'                         # 'Michael_Rayappan' is updated as "BIGIL" using   /  ['name'] --> key  \
print("Updated name in dict: \n",my_dict_1)

print("\n")

#  2.Function .update() - Single updation
my_dict_1.update({'name':'Bigil'})                # 'BIGIL' is updated as "Bigil" using   /  .update({'key':'val'}) --> function \
print("Updated name in dict: \n",my_dict_1)
print("------------------------------------------------------------------------------------------------------------")


#MULTIPLE Value - Updation
#How to update Multiple-value in dictionary..?
#  1.Standard array/list - updation
#  2.Function .update() - updation

my_dict_1 ={
            'name':'Michael_Rayappan',
            'mail':'xyz@gmail.com',
            'Roll_num': 612619,
            'subjects':['Maths','English','Tamil','Science','Social'],
            'Percent':'95%'
           }

#  1.Standard array/list - Multiple updation
my_dict_1['subjects']=['98','91','89','99','95']       # 'subjects' is updated as "subj-mark" using    / stand-array \
my_dict_1['Percent']=94.7                              # 'Percent' is updated using                    / stand-array \
print("Updated subject & percent [stand list/array]: \n",my_dict_1)

print("\n")

#  2.Function .update() - Multiple updation
my_dict_1.update({'subjects':['98','91','89','99','95'], 'Percent':94.7})     # Both 'subject' & 'Percent' updated using  //.update({'key':'val'})\\
print("Updated subject & percent [.update()]: \n",my_dict_1)
print("x----------x------------x--------------x----------------x-----------------x--------------x----------------x-")



#APPEND:-
#How to append new-item to dictionary..?

my_dict_1 ={
            'name':'Michael_Rayappan',
            'mail':'xyz@gmail.com',
            'Roll_num': 612619,
            'subjects':['Maths','English','Tamil','Science','Social'],
            'Percent':'95%'
           }
print("Before updating new-item:- \n",len(my_dict_1))
my_dict_1.update({'colors':('Blue','yellow','Red')})
print("Updated an new-item to dictionary:- \n",my_dict_1)
print("After updating new-item:- \n",len(my_dict_1))
print("x----------x------------x--------------x----------------x-----------------x--------------x----------------x-")



#POP:-
#How to pop/remove item from dictionary..?
my_dict_2 = {
              'name': 'Michael_Rayappan',
              'mail': 'xyz@gmail.com',
              'Roll_num': 612619,
              'subjects': ['Maths', 'English', 'Tamil', 'Science', 'Social'],
              'Percent': '95%',
              'colors': ('Blue', 'yellow', 'Red')
            }

# Pop/removing --> item is removed in dict by using "key-name --> colors"
print("Before_pop: \n",my_dict_2)
my_dict_2.pop('colors')                       #one-item is removed from dictionary
print("After_pop: \n",my_dict_2)
print("x----------x------------x--------------x----------------x-----------------x--------------x----------------x-")



