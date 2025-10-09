# IT 2004 - Parallel Programming 
GitHub Repository for Assignment Submissions for Parallel Programming.

## Assignment 1
Code Fixes:
- Initialized values for ipos and ival at the start of the program
- Changed For Loops to iterate only 10 times because memory allocates is 10 * size of int, which is 40 bytes.
- Stopped Memory Leak with free(iarray)
- Added return 0 at the end of the program

Makefile:
- Create Makefile
- Added all: which starts main
- Added main: which calls gcc on main.c
- Added valgrind: which shows Memory Leaks
- Added run: which runs the compiled program

What Valgrind Displayed:
root@Haris:~/it-2004# make valgrind
make: Warning: File 'Makefile' has modification time 0.36 s in the future
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes  ./main 5
==1003== Memcheck, a memory error detector
==1003== Copyright (C) 2002-2022, and GNU GPL'd, by Julian Seward et al.
==1003== Using Valgrind-3.22.0 and LibVEX; rerun with -h for copyright info
==1003== Command: ./main 5
==1003==
==1003==
==1003== HEAP SUMMARY:
==1003==     in use at exit: 0 bytes in 0 blocks
==1003==   total heap usage: 1 allocs, 1 frees, 40 bytes allocated
==1003==
==1003== All heap blocks were freed -- no leaks are possible
==1003==
==1003== For lists of detected and suppressed errors, rerun with: -s
==1003== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)
make: warning:  Clock skew detected.  Your build may be incomplete.
