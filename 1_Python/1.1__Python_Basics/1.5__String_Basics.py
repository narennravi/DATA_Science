# String:-
#    Any datatype which is present inside "__"/'__' is considered as string
#    Multiple line(Sentence) of string can be written using '''___'''/"""___"""

#  1. Multiple-lines: (print str as same given format)

a = """You 
have
great 
Future..!
"""
print(a)
print("------------------------------------------------------------------------------")


#  2. Single-line: (print entire sentence of str in line-by-line/new-line)

b = 'You\n' 'can\n' 'do\n' 'everything..!\n'
print(b)
print("------------------------------------------------------------------------------")



#BASICS:-
#How to access str - particular position..?
c = 'Guvi Geek'
print("1st-word of string -->",c[0])
print("------------------------------------------------------------------------------")

#How to find length of entire str..?
c = 'Guvi Geek'
print("Length of string -->",len(c))
print("------------------------------------------------------------------------------")

#How to reverse string..?
c = 'Guvi Geek'
print("String reversed-->",c[::-1])
print("------------------------------------------------------------------------------")

#How to print entire str of c in separate line..?
c = 'Guvi Geek'
for c_1 in c:
    print(c_1)
print("------------------------------------------------------------------------------")



# in
#How to check particular word is present (or) not inside string..?

x = "India is my country all indians are my brothers and sisters"
print("all" in x)       # checking whether ("all") present in x
print('love' in x)      # checking whether ('love') present in x
print("------------------------------------------------------------------------------")



# SLICING --> [start:stop:step]
c = 'GuviGeekNetwork'
print("----FORWARD-slicing----")
print(c[:4])      # only "Guvi" is sliced
print(c[4:8])     # only "Geek" is sliced
print(c[4:])      # from "Geek to end" of string is sliced
print(c[:15:2])   # odd-value
print(c[::2])
print(c[1:15:2])  # even-value
print(c[1::2])

c = 'GuviGeekNetwork'
print("----REVERSE-slicing----")
print(c[::-1])    # reversing string
print("------------------------------------------------------------------------------")



# LOWER & UPPER:
d = "Data_Science"
print(d.lower())   #lowercase - string
print(d.upper())   #uppercase - string
print("------------------------------------------------------------------------------")



# STRIP:
d = "  Data_Science   "
print("before-->",d)
print("after-->",d.strip())    #Unwanted spacing is removed
print("------------------------------------------------------------------------------")



# REPLACE:   [Used to replace word in HUGE programs which has 10k lines/more]
d = "Data_Science"
print("before-->",d)
print("after-->",d.replace('Science','Engineer'))   #Science is replaced as Engineer
print("------------------------------------------------------------------------------")



# SPLIT:   [Used to generate USER_NAME separately from mail-idy using --> .split('@gmail.com') ]
e = "Data_scientist,Data_analyst,Data_engineer,ML_engineer"
print("before-->",e)
print("after-->",e.split(","))      #By using (","), split-up string and give in list-form
print("------------------------------------------------------------------------------")



# CONCATENATION:   [Used to merge two different string into one]
w1 = 'You & me'
w2 = 'Forever'
print(w1+w2)
print(w1 + " " + w2)    #for spacing " " purpose
print("------------------------------------------------------------------------------")
