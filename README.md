Makefile Demo
=================

Make sure you have the 'make' program installed as well as a c++ compiler 'g++'  At the command line type:

    make --version
    g++ --version

You should see some version information about your c compiler and make instance.

First read the c++ source files. They're pretty simple.  Then read the makefile.

Change directories into the folder with this README and run `make main` at the terminal.

After some output you should see a file appear in this directory called main.

Run it by typing `./main` at the terminal.

Try changing the different source files and re-running make.

Try running `make main` then `rm one.o` then `make main` again. Look at which commands it runs. Notice it doesn't regenerate two.o.

Run `make clean` to reset the directory and remove all the .o files and the executable.

You can also look at this [makefile tutorial](http://mrbook.org/tutorials/make/) to see a similar example worked out, and more features of make.

