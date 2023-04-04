# CONDITIONAL__OPERATORS:-
#  1.  a == b   [Equal-to]
#  2.  a != b   [Not-Equal-to]
#  3.  a < b    [lesser-than]
#  4.  a > b    [Greater-than]
#  5.  a <= b   [less_than or equal-to]
#  6.  a >= b   [Greater than or equal-to]


# CONDITIONAL__STATEMENTS:-
#  1. if-else
#  2. Nested if



# Logical-Error:
#        You given correct logic +  but @print-statement you mistaken word as wrong[HUMAN-error] & leads to logical error.
#        But system gives o/p(Machine do's its task) - we should check the logic



# if-else Statement:-     [ >,< --> Greater & less than operator]
# subject mark of 2-students is provided and check logic using if-else statement


# 1. Correct-logic in condition & no human error in print-statement
ram = 190
sita = 199

if ram > sita:                    #-----No logical error-----
    print("ram is high scorer")
else:
    print("sita is high scorer")
print("------------------------------------------------------------------------------------------")


# 2. Correct-logic in condition & "*LOGICAL_ERROR" in print-statement
ram = 190
sita = 199

if ram < sita:                   # -----logical error------ @print
    print("ram is high scorer")
else:
    print("sita is high scorer")
print("------------------------------------------------------------------------------------------")



# if-elif Statement:-     [ >,==,< --> Greater_than , equal, less_than operator]
a = 90
b = 90

if a > b:
    print("a is geater than b")
elif a == b:
    print("a and b are equal")
else:
    print("b is greater")
print("------------------------------------------------------------------------------------------")



#if-else Statement:-        {-----LIST COMPREHENSION method-------}

m, n = 78, 89
print("m is Greater") if m>n else print("n is Greater")
print("------------------------------------------------------------------------------------------")



#if-else Statement:-         [Multiple condition in statement using --> "and" operator]
p = 25
q = 60
r = 77
if r>p and r>q:
    print("r is greater")
else:
    print("q is greater")
print("------------------------------------------------------------------------------------------")



#if-elif statement :-        [Multiple condition in statement using --> "and" operator]
# bmi range related condition

bmi = 30                      # Obessed
#bmi = 20                      # Normal
#bmi = 17                      # under-weight

if bmi <= 18:
    print("Under-weight")
elif bmi < 18 and bmi <= 24:
    print("Normal-weight")
elif bmi < 25 and bmi <= 29:
    print("Over-weight")
else:
    print("Obessed - fat")
print("------------------------------------------------------------------------------------------")
