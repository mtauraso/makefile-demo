# These are variable definitions. The rule is that wherever you see $(VAR) the value of the variable
# will be substitutied.
# This is the name of the C++ compiler
CXX=g++

# This is where we put flags we want to pass to the C compiler.
# The flag I put here turns on all compiler warnings.
# You can also put flags for optimizations or optional compiler features here
CFLAGS=-Wall


# Skip this section on your first reading and come back to it.
# After you understand this file, try uncommenting the line below and run 'make all'.
#all: main
# This rule has no commands to run, but depends on other files. Think about how that works.
# Also: when you run make without a command ... just 'make' it runs the first target in the file.
# Try 'make' with the line 'all: main' commented in.


# The line below this comment means that the creation of one.o depends on one.cc.
#
# Make will use the last-modified time on the files to determine if one.o needs to 
# be regenerated. It will only run the command if one.cc is *NEWER* than one.o and has
# therefore changed since one.o was generated.
#
# You can see the last-modified time with 'ls -l' at the terminal.
#
# one.o is also called a 'target'
# one.cc is also called a 'dependency'
# File names can be targets, dependencies, or both.
one.o: one.cc
# This is the command to generate one.o
# There is a tab character at the beginning of this line. It is super-important
# if you are editing makefiles either set your editor to show you tab characters
# visually or be very carful to make sure tabs are in the file and not a bunch of spaces.
	$(CXX) $(CFLAGS) -c one.cc -o one.o

# These are the rules to generate two.o, and main.o from theier source files
two.o: two.cc
	$(CXX) $(CFLAGS) -c two.cc -o two.o
main.o: main.cc
	$(CXX) $(CFLAGS) -c main.cc -o main.o

# Notice the main target depends on multiple files which are themselves targets
# We're also calling the compiler a little differently here
# Since we aren't making a .o file we don't pass the '-c' flag.
main: main.o one.o two.o
	$(CXX) $(CFLAGS) main.o one.o two.o -o main

# This is a phony target (it doesn't depend on other files, so if you ask for it, it always runs)
clean:
# This deletes all generated files.
	rm -r *.o main

# Can you add a three.cc to this project and call a function in it from main.cc?
# What are all the places you had to change?
#
# Can you re-write this file so that there's a variable called OBJS=main.o one.o two.o
# Does this make it easier to add more files to your project?
# What else might you want to make adding more source files easy?


