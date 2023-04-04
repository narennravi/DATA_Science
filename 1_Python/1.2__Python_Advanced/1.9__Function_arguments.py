# Function_Arguments:

# we created function to repeat list using arguments
my_list = ['Apple','Strawberry','Mango','Orange']

def fruits(x):               # x (parameter) --> my_list (argument)
    print(x*3)               # my_list got printed 3 times

fruits(my_list)              # calling function with argument name --> my_list
print("-----------------------------------------------------------------------------------")



# We are calling function as argument inside a function.
list = ['Ram','Sita','krishna','Radha']

def name_multiple(a):          # This function --> used to print item (no.of.times)
    print(a*2)

def simple(name, list):
    for items in list:         # From list - we take all individual_item (one-by-one)
        name(items)            # That individual items were stored ---> name

simple(name_multiple, list)    #calling function(simple) - { argument [Function-->name_multiple]  ,  argument [list] }
print("-----------------------------------------------------------------------------------")