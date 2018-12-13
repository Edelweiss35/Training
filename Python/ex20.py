from sys import argv #import argv to accept input

script, input_file = argv #assign the input arguments to variable names

def print_all(f): #define a function to print the whole file
	print f.read() #use read() to print the file

def rewind(f): #define a function to rewind to the start of the file
	f.seek(0) #use seed(0) to go to the very bigginning of the file

def print_a_line(line_count, f): #print the line specified in line_count in file f
	print line_count, f.readline() #print it

current_file = open(input_file) #open the inputted file

print "First let's print the whole file:\n" #provide feedback to the user what is going on

print_all (current_file) #print the current file using our defined function

print "Now let's rewind, kind of like a tape." #privide feedback

rewind(current_file) #rewind the file using our defined function

print "Let's print three lines:" #provide user feedback

current_line = 1 #instantiate the first line to be printed
print_a_line(current_line, current_file) #using our function, print the first line

current_line += 1 #increment our variable by one
print_a_line(current_line, current_file) #print the second line

current_line += 1 # increment our variable one last time
print_a_line(current_line, current_file) # print the third line
