# Number/Numeric value is of 3-datatypes:-
#   1. int
#   2. float
#   3. complex

a = 5      # int-val
b = 2.56   # float-val
c = 15j    # complex-val

print(a, type(a))
print(b, type(b))
print(c, type(c))

print("#_________________________________________________________________________________________________________________")

# Datatype Conversion:-
#  1. int to float
#  2. float to int
#  3. int to complex

x = float(a)
y = int(b)
z = complex(a)

print("int-to-float --> ", x)
print("float-to-int --> ", y)
print("int-to-complex --> ", z)

print("#_________________________________________________________________________________________________________________")

# Math Operations:- [+, -, *, /, %, **, //]
#  1. Addition
#  2. Subtraction
#  3. Multiplication
#  4. Division
#  5. Modulo - (Remainder)
#  6. Exponential - (Power of)
#  7. Floor Division - (Dividing one number by another number and then rounding the result to closest integer that is smaller)

num_1 = 10
num_2 = 3

print("Addition -->", num_1 + num_2)
print("Subtraction -->", num_1 - num_2)
print("Multiplication -->", num_1 * num_2)
print("Division -->", num_1 / num_2)
print("Modulo -->", num_1 % num_2)
print("Exponential -->", num_1 ** num_2)
print("Floor_division -->", num_1 + num_2)

print("#_________________________________________________________________________________________________________________")
