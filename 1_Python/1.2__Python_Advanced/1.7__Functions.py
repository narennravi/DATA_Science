# FUNCTIONS:-
# Steps to follow while creating function are:
#    1. Function definition
#    2. Function declaration (condition/statement/loop)-Inside function
#    3. calling Function


# Syntax:
def new_function():
    print("-- Black panther --")

new_function()
print("----------------------------------------------------------------------------------------------------")



#  1. Function using "SINGLE parameter" :-

def blacky(x):                  # (x) ----> Parameter
    print(x + "User")           # This is function declaration area

blacky("Welcome ")              # ("Welcome ") --> Argument
# [x = Welcome] will be assigned inside declaration while calling-up function "blacky"
print("----------------------------------------------------------------------------------------------------")



#  2. Function using "MULTIPLE parameter" :-

def multiple(a,b):               # (a,b) ----> Parameters
    print(a + " LOVE " + b)      # This is function declaration area

multiple("Ram", "Sita")          # ("Ram","Sita") --> Arguments
# [a = Ram  &  b = Sita] will be assigned inside declaration-area while calling-up function "multiple"
print("----------------------------------------------------------------------------------------------------")


#NOTE:-
#   While naming function be aware the function_name shouldn't be any of keyword name
#   Keyword --> sum, from, in, as, True, replace, math, etc.,,