#FOR Loop:-


# number in list-format gets printed 1-by-1 for each loop-rotation
number = [1,5,7,9,34,64,98,100,150]
print("Before: \n",number)
print("After: ")
for x in number:
    print(x)

print("------------------------------------------------------------------------")

# String is also considered as list-type & printed 1-by-1 for each loop rotation
x = "Fruit Seller"
print("Before: \n",x)
print("After: ")
for a in x:
    print(a)

print("------------------------------------------------------------------------")


#NOTE:
#  For-loop is applicable for all datatypes:
#     1. String              5. Numeric - int,float,complex
#     2. List                6. bool
#     3. Tuple               7. set
#     4. Dictionaries        8. range  etc..,
print("------------------------------------------------------------------------")



#BREAK:-    [for loop]

# How to stop for-loop rotation in-between..?
i = [1,5,7,9,34,64,98,100,150]
print("Before Break: \n",i)
print("After break: [Till 34 value printed]")
for x in i:
    print(x)
    if x==34:         # while x==34 condition(PASS) & finally execute "break"
        break         # breaks the loop

print("____________________________________________________________________________")


#CONTINUE:-  [for loop]

# How to continue for-loop rotation ?
i = [1,5,7,9,34,64,98,100,150]
print("Before continue: \n",i)
print("After continue: [except 9 - all value printed]")
for x in i:
    if x==9:          # while x==9 condition(PASS) & finally execute "break"
        continue      # continue the loop
    print(x)

print("_______________________________________________________________________________")



# RANGE :-

#NORMAL - For loop (range)
# How to print range using for-loop.?
print("Normal for-loop method: \n")
for x in range(1,11):
    print(x)

print("------------------------------------------------------------------------------")


#LIST COMPREHENSION - For loop (range)
# How to print range using for-loop.?
list_compr = [x for x in range(1,26)]       # list of 25 values printed
print("List comprehension method: \n",list_compr)

print("x----x-----x-----x------x------x-----x------x------x------x-----x-----x-----x-----x-----x------x-----x----x----x")



# WHILE -Loop

i = 1
print("While loop less than 6 were printed: ")
while i<6:
    print(i)                # for each rotation i-value is updated & stored = (i)
    i+=1  #(or) i=i+1

print("--------------------------------------------------------------------------------")


# BREAK - [while loop]
j = 1
print("While loop [Break]: ")
while j<6:
    print(j)               # Initial value(j=1) & updated j-value also stored = (j)
    if j==4:               # when j==4 break --> while loop
        break
    j+=1  #(or) j=j+1      # j-value is updated

print("----------------------------------------------------------------------------------")


# CONTINUE - [while loop]
k = 1
print("While loop [Continue]: ")
while k<8:
    k+=1   #(or) k=k+1     # first k-value is updated
    if k==5:               # Here k==5, 5 is skipped & continue looping
        continue
    print(k)               # All updated k-value is stored here = (k)

print("x----x-----x-----x------x------x-----x------x------x------x-----x-----x-----x-----x-----x------x-----x----x----x")
