# FILE-Handling:-
#  1. File handling is an important part of any web application.
#  2. file handling has 4-mode:-
#        Read   --> r
#        Write  --> w
#        append --> a
#        create --> x
#  3. open() function takes two parameters --> open(filename,  mode)


# ----------------FILE - READ_mode(r)-----------------
#   1. open-file & read from current directory:-

file = open('Trail-file.txt', 'r')
print("READ-File from current-directory:- \n")                  #It reads the file-content
print(file.read())
print("-------------------------------------------------------------------------------------")


#   2. open-file & read from different directory:-

file_1 = open("E:\My_Guvi\Csv file\Task - 2__ JSON\students.json", 'r')
print("READ-File from different-directory:- \n")
print(file_1.read())
print("-------------------------------------------------------------------------------------")



#  Read_file - only by character
file = open('Trail-file.txt', 'r')
print("READ-file by first 9-characters:- \n")            # 9 --> reads only first 9-characters from file
print(file.read(9))
print("-------------------------------------------------------------------------------------")



#  Read_file - line by line
file_1 = open("E:\My_Guvi\Csv file\Task - 2__ JSON\students.json", 'r')
print("READ-file by line:- \n")
print(file_1.readline())
print("-------------------------------------------------------------------------------------")



# Read_file - multiple lines
file_1 = open("E:\My_Guvi\Csv file\Task - 2__ JSON\students.json", 'r')
print("READ-file by multiple-lines :- \n")

print(file_1.readline())                                    #mentioning twice command of --> __file_1.readline()__ = Displays 2-line contents from file
print(file_1.readline())
#       [or]
#print(file_1.readline(),file_1.readline())
print("-------------------------------------------------------------------------------------")



# Read_file using for-loop:-
file = open('Trail-file.txt', 'r')
for f in file:
    print(f)

file.close()
print("x--------x---------x----------x-----------x-----------x----------x---------x---------x")



# ----------------FILE - APPEND_mode(a)-----------------
# APPEND :
#     New Sentence/word which we mention @file.write('--here--') will be added at end of file
#     open() function takes two parameters --> open(filename,  mode)

file = open('Trail-file.txt', 'a')       #open-file in append mode
file.write(' New word is added')         #This words get added at end of file
file.close()                             #file should be closed properly while file is open

file = open('Trail-file.txt', 'r')       #Open-file in read mode
print(file.read())                       #Reading-file
print("x--------x---------x----------x-----------x-----------x----------x---------x---------x")



# ----------------FILE - WRITE_mode(w)-----------------
# WRITE:
#     It will overwrite file from first as  ""full-fresh""
#     open() function takes two parameters --> open(filename,  mode)

file = open('Trail-file.txt', 'w')
file.write(' Complete_Fresh start of file')
file.close()

file = open('Trail-file.txt', 'r')
print(file.read())
print("x--------x---------x----------x-----------x-----------x----------x---------x---------x")



# Difference between APPEND-mode  &  WRITE-mode
# APPEND - mode:
#      1. Sentence/word which we mention @file.write('--here--') will updated in end of file
#      2. To read file in append mode --> open("filename/filepath", 'a')
#      3. Similar to updating file
#      4. It starts from where you left

# WRITE - mode:
#      1. Sentence/word which we mention @file.write('--here--') will be re-written as "Fresh-content" from initial stage
#      2. To read file in Write mode --> open("filename/filepath", 'w')
#      3. Previous content of file will be re-written as new-content of file
#      4. It starts freshly

print("x--------x---------x----------x-----------x-----------x----------x---------x---------x")



# ----------------FILE - CREATE_mode(x)-----------------
file = open("New-file.txt",'x')          # New file.txt is created in same directory --> CREATE - mode
#         [or]
file_1 = open("New-file_1.txt",'w')       # New file_1.txt is created in same directory --> WRITE - mode


# NOTE:-   [--IMPORTANT--]
#    WRITE & CREATE mode is almost same
#    Because both mode help us to create new-file
print("x--------x---------x----------x-----------x-----------x----------x---------x---------x")



# ---------DELETE - File------
#   To delete file we need to --> import os module

import os
os.remove("New-file.txt")
print("-----------------------------------------------------------------------------")


# To delete file by checking it using "if-else":-

import os

if os.path.exists("New-file_1.txt"):
    os.remove("New-file_1.txt")
else:
    print("File not exist")
print("x--------x---------x----------x-----------x-----------x----------x---------x")
