#  1. Syntax_error:-

#print "Hello_"
#   *Reason ---> Missing any ()
print("#_________________________________________________________________________________________________________________")


#  2. Index_error:-

#list_1 = [1, 5, 7]
#list_1[3]
#   *Reason ---> List index is out of range [List index always starts from 0-Zero]
print("#_________________________________________________________________________________________________________________")


#  3. Import error:-

#import notmodule
#   *Reason ---> Importing Invalid/Not presented module/mistaken module name leads to import-error
print("#_________________________________________________________________________________________________________________")


#  4. key error:-

#dic = {1:"car", 2:"bike", 3:"Airplane"}
#print(dic[4])
'''   *Reason ---> you have given only 3-keys(1,2,3) & 3-values(car,bike,airplane)
           ---> 4th-key is not defined @dic
           ---> Mistaken-key name also leads to key error'''
print("#_________________________________________________________________________________________________________________")


#  5. Import Error - 2:-  [unknown location from module]

#from math import cube
'''     *Reason ---> correct keyword is important while importing
             ---> Even missing module also cause "unknown location-Import error" '''
print("#_________________________________________________________________________________________________________________")


#  6. Iteration error:- (stop iteration error)

#p = iter([2,3,4])
#print(next(p))  # prints 2
#print(next(p))  # prints 3
#print(next(p))  # prints 4
#print(next(p))  # error
'''     *Reason ---> p has only 3-values & your asking 4th value to print
             ---> So leads to iteration error '''
print("#_________________________________________________________________________________________________________________")


#  7. Type error:-

#sum = "5" + 5
#print(sum)
'''  *Reason ---> same datatype only supports concatenation(merge)
          ---> "5" is str and 5 is int '''
print("#_________________________________________________________________________________________________________________")


#  8. Value Error:-

#l = int('abc')
#print(type(l))
'''   *Reason ---> You're giving string and asking to frame as int
           ---> while asking to type the datatype leads to value_error '''
print("#_________________________________________________________________________________________________________________")


#  9. Name Error:-

#print(s)
'''   *Reason ---> calling undefined value leads to name error
           ---> Bcz we didn't assign any operation in s '''
print("#_________________________________________________________________________________________________________________")


#  10. Zero_Division_error:-

#print(100/0)
'''   *Reason ---> In all program language (number / zero = Zero division error) '''
print("#_________________________________________________________________________________________________________________")


#  11. Keyboard_error:-

#name = input("Enter your name: ")
"""   *Reason ---> Instead of entering name you just stop execution/pressed enter leads to keyboard interrupt error """
print("#_________________________________________________________________________________________________________________")


#  12. Indentation error:-

# print("Hello")        #method-1
#for i in range(1,10)   #method-2
#for m in range(10,20):  #method-3
#print("peace")

'''   *Reason ---> Unwanted spacing/Missing colon in loops(for/while) & Condition statement(if/else/elif)
           ---> after for/while/if/else/nested-if we should maintain spacing for print-statement to avoid indentation-error'''