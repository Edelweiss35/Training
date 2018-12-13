##import argv to use for program input
from sys import argv
#define variables for argv
script, filename = argv

#open the file
txt = open(filename) 

#prints the name of the file as the string appears
print "Here's your file %r:" % filename
#prints the file by reading it with read() command
print txt.read()

#this block prints a command and a prompts the user to input another file
print "Type the filename again:"
file_again = raw_input("> ")

#opens the file again
txt_again = open(file_again)

#prints the file again
print txt_again.read()

txt.close()
txt_again.close()
