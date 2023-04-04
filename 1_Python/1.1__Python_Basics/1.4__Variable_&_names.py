# Python = Case_sensitive

x = 45
X = 35
print(x)
print(X)
print("#-----------------------------------------------------------------------------------------------------------------------")

# Last updated value is consider as "1st-Most__preference"

a = 34
a = 5
print(a)
print("#-----------------------------------------------------------------------------------------------------------------------")

# Variable-Naming
#  1. alphabet (Upper_case) --> Eg: A, CAR
#  2. alphabet (lower_case) --> Eg: b, num
#  3. alphanumeric snake_case = (Uppercase) --> Eg: VAL_2, NUM_3
#  4. alphanumeric snake_case = (lowercase) --> Eg: val_2, num_3
#  5. alphabet + underscore  --> Eg: n1_ , M2_ , _P3_ , _q4_ , _R5 , _s6

#Defining variable_name ---> ____"CORRECT methods"____
A, b = 23, 55.3
CAR = ['Maruthi', 'Tata']
Tom = "jerry"
val_2 = (23,34,56)
NUM_3 = (2,4,6)
n1_, _P3_, _s6 = 10,20,30
abc_23_KMLO = [1,3,5,7]

print("A, b = ",A,b)
print("CAR = ",CAR)
print("Tom = ",Tom)
print("val_2, NUM_3 = ",val_2,NUM_3)
print("n1_, _P3_, _s6 = ",n1_, _P3_, _s6)
print("abc_23_KMLO = ",abc_23_KMLO)


#Defining variable_name -->  __"WRONG/INVALID method"__

#  1. Syntax-error: INVALID Decimal literal = [Numeric naming for variable is INVALID syntax]
#12_ = "hai"
#12abc = 'well'
#print(12_, 12abc)


#  2. Syntax-error: INVALID Syntax = [ keywords(orange-color) can't become variable_name]
#from = 36
#print(from)
print("#-----------------------------------------------------------------------------------------------------------------------")

# Single value is assigned to multiple Variables

K = L = M = "NFS-Most_wanted"
print(K)
print(L)
print(M)