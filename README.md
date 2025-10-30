# IT 2004 - Parallel Programming 
GitHub Repository for Assignment Submissions for Parallel Programming.

## Assignment 4 

Code Fixes:
- Implemented a functions from a book for Long Double, Pairwise, Kahn, Knuth Sum.
- In main.c reformated a code, making a test function which will implement generic testing for any function
- In main.c called test functions for each sum function/method

Makefile:
- Added -lm flag in Makefile to be able to run because of pow/log2 functions

Image:
![alt text](image.png)

Output is generated in output.txt
Datasheet Link: https://docs.google.com/spreadsheets/d/14xHdWOUENASgu0pJXP3XlSJQYpYoq3IWyOT4fn0_YZA/edit?usp=sharing

### What does Data show:


### How the Global sum problem affects parallelization:
The global sum problem significantly affects parallelization because of an inherent limitation of finite-precision arithmetic: non-associativity