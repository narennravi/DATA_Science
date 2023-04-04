#TUPLE:-   ---->  (Ordered, Immutable/Unchangeable, Duplicates)

#  Tuple followed in C braces only --> ( )
#  Tuples are used to store multiple items in a single variable.
#  Tuple hold Different datatype - Numeric stuffs, String, boolean, dict, etc.,
#       1. Tuple is "IM_Mutable/Un_Changeable" -- [data in tuple can't modify]
#       2. Tuple "allows duplicate" value also.
#       3. Tuple follows "ordered" sequence


# How to print tuple..?
tuple_1 = ('Vishnu', 25, True, "Car", 10.12, 7j)
print(tuple_1)                                  # List items displayed
print("Datatype: \n",type(tuple_1))             # Datatype shown
print("Length : \n",len(tuple_1))               # length of list

print("-----------------------------------------------------------------------------------------------------------")

# Twist in tuple
#    Tuple has only one item ---> class-"tuple" will converted as class-"string"
#    Tuple has multiple/more item ---> class tuple remains
tuple_2 = "Scania"
print("tuple with one-item = string:  ",type(tuple_2))

tuple_2 = "Scania","Volvo"
print("tuple with multi-item = tuple:  ",type(tuple_2))

print("-----------------------------------------------------------------------------------------------------------")

#How to access particular tuple..?
tuple_3 = ('Vishnu', 25, True, "Car", 10.12, 7j)
print("Access'g tuple-item using index-position: \n",tuple_3[0])          # tuple items were accessed by "index-position-->[0,1,2,..N]"

print("-----------------------------------------------------------------------------------------------------------")

#Slicing tuple:-
tuple_3 = ('Vishnu', 25, True, "Car", 10.12, 7j)
print("Slicing list [start:stop]: \n",tuple_3[:3])                        # Slicing from index_pos:0-2 will displayed  &  [3rd-index  not considered]

print("-----------------------------------------------------------------------------------------------------------")

#How to reverse tuple..?
tuple_3 = ('Vishnu', 25, True, "Car", 10.12, 7j)
print("Reversing List: \n",tuple_3[::-1])

print("-----------------------------------------------------------------------------------------------------------")

#Trying to modify tuple - leads to error
#      REASON:   (-------Tuple - Immutable-------)
'''
tuple_3 = ('Vishnu', 25, True, "Car", 10.12, 7j)
tuple_3[1] = 'Raja'                             *TypeError: 'tuple' object does not support item assignment
print(tuple_3)
'''

print("x--------x----------x-----------x-----------x-----------x------------x----------x----------x-----------x---")


# APPEND Vs INSERT - Differences..?
# Append ---> Used to insert/add new item at  __"End of list"__
# Insert ---> Used to add/insert new item at __"Specific position"__ of list


#APPEND:-           (-------Tuple - Immutable-------)
#Trying to append tuple item... --> Error
'''
print("Before Append -->",tuple_3)
tuple_3.append("orange")                        *AttributeError: 'tuple' object has no attribute 'append'
print("After Append -->",tuple_3)
'''


#INSERT:-           (-------Tuple - Immutable-------)
#Trying to insert tuple item... --> Error
'''
print("Before insert --> ",tuple_3)
tuple_3.insert(0,"Flowers")                    *AttributeError: 'tuple' object has no attribute 'insert'   
print("After insert --> ",tuple_3)
'''


# MODIFY - tuple by typecasting:-
# Modification in tuple is possible by  "" type_casting (tuple) ---> [list] ""
#   1. to modify tuple-items we are typecasting tuple into list
#   2. After completing modification in list - again typecast list to tuple
#   3. Finally we changed items in tuple by typecasting to list & converted to tuple again

tuple_3 = ('Vishnu', 25, True, "Car", 10.12, 7j)
print("Before typecasting: ",type(tuple_3))
y = list(tuple_3)                                    # tuple ----type_casted-----> list  using y-variable
print("After typecasting: ",type(y))

print("list format(type_casted): \n",y)
y[0:4] = ['Lakshmi', 20, True, True]
tuple_3 = tuple(y)                                    # Again list ----type_casted-----> tuple  using tuple_3
print("Tuple format(type_casted): \n",tuple_3)        # see "True","True" duplicates were present in tuple

print("x--------x----------x-----------x-----------x-----------x------------x----------x----------x-----------x---")
