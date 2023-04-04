# PYTHON Built-in-DATA_Type:-
#    1. List         --> []
#    2. Tuple        --> ()
#    3. Dictionary   --> {'':''}
#    4. Set          --> ()


#LIST:-   ---->  [Ordered, Mutable/Changeable, Duplicates]

#   List followed in Square brackets only --> [ ]
#   List used to store multiple items in single variable
#   List hold Different datatype - Numeric stuffs, String, boolean, dict, etc.,
#       1. List is "Mutable/Changeable" -- [data in list can modify]
#       2. List "allows duplicate" value also.
#       3. List follows "ordered" sequence


# How to print list..?
list_1 = ['Vishnu', 25, True, "Car", 10.12, 7j]
print(list_1)                                  # List items displayed
print("Datatype: \n",type(list_1))             # Datatype shown
print("Length of list: \n",len(list_1))         # length of list

print("-----------------------------------------------------------------------------------------------------------")

#How to access particular list..?
list_1 = ['Vishnu', 25, True, "Car", 10.12, 7j]
print("Access'g item from list using index-position: \n",list_1[3])       # List items were accessed by "index-position-->[0,1,2,..N]"

print("-----------------------------------------------------------------------------------------------------------")

#Slicing list:-
list_1 = ['Vishnu', 25, True, "Car", 10.12, 7j]
print("Slicing list [start:stop]: \n",list_1[1:4])                        # Slicing from 1st position to 4th-position  &  [4th-index is not considered]

print("-----------------------------------------------------------------------------------------------------------")

#How to reverse list..?
list_1 = ['Vishnu', 25, True, "Car", 10.12, 7j]
print("Reversing List: \n",list_1[::-1])

print("-----------------------------------------------------------------------------------------------------------")

#How to modify list item using Index-position..?
list_1 = ['Vishnu', 25, True, "Car", 10.12, 7j]
print("Before Modify --> ",list_1)
list_1[2]="False"                                 #index-position[2]==True is modified as "False"
print("After Mofdify --> ",list_1)

print("x--------x----------x-----------x-----------x-----------x------------x----------x----------x-----------x---")


# APPEND Vs INSERT - Differences..?
# Append ---> Used to insert/add new item at  __"End of list"__
# Insert ---> Used to add/insert new item at __"Specific position"__ of list

#APPEND:-
#How to append list item..?
print("Before Append -->",list_1)
list_1.append("orange")                           #Append --> add new item to list at "end of List"
print("After Append -->",list_1)

print("-----------------------------------------------------------------------------------------------------------")

#INSERT:-
#How to insert list item..?
print("Before insert --> ",list_1)
list_1.insert(0,"Flowers")                        #insert --> add item in-between list/any specific position
print("After insert --> ",list_1)

print("-----------------------------------------------------------------------------------------------------------")

#POP:-       [Removes the list - last item ]
#How to pop last item from list..?
print("Before pop --> ",list_1)                   #pop(2) --> remove 2nd-index positioned item from list
list_1.pop()                                      #pop() --> remove last item from list
print("After pop --> ",list_1)

print("-----------------------------------------------------------------------------------------------------------")

#How to change multiple list-items ..?
print("Default list: \n",list_1)
list_1[0:3] = ['False','Priya','Bike']           # see duplicates were allowed [False,False] @ o/p
print("After changes in list: \n",list_1)

print("x----x-----x-----x------x-----x-------x--------x--------x-------x---------x-------x-------x-------x---------x")
