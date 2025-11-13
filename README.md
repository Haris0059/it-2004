# IT 2004 - Parallel Programming 
GitHub Repository for Assignment Submissions for Parallel Programming.

## Assignment 6
- Implemented stencil_opt4 and stencil_opt6
- Modified Makefile to be able to run all of the stencil's

### Output after running all run-opts
```bash 
Running stencil_opt2...
./stencil_opt2
Running with 20 thread(s)
Iter 0
Iter 1000
Iter 2000
Iter 3000
Iter 4000
Iter 5000
Iter 6000
Iter 7000
Iter 8000
Iter 9000
Timing is init 0.004889 flush 18.047587 stencil 21.309896 total 39.367015

Running stencil_opt4...
./stencil_opt4
Running with 20 thread(s)
Iter 0
Iter 1000
Iter 2000
Iter 3000
Iter 4000
Iter 5000
Iter 6000
Iter 7000
Iter 8000
Iter 9000
Timing is init 0.005162 flush 14.762134 stencil 24.381099 total 39.152238

Running stencil_opt6...
./stencil_opt6
Running with 20 thread(s)
Iter 0
Iter 1000
Iter 2000
Iter 3000
Iter 4000
Iter 5000
Iter 6000
Iter 7000
Iter 8000
Iter 9000
Timing is init 0.002887 flush 15.079435 stencil 22.899100 total 40.006198

 ```
### Screenshot of whole terminal
![alt text](image.png)
![alt text](image-1.png)
![alt text](image-2.png)


### Questions & Answers

#### How many threads your CPU used to execute the code? 
My CPU used 20 threads to execute the code.

#### What are the parts of the code that were improved? What strategies were used to improve the code? 

#### What is the difference between explicit and implicit barriers inside the code and did they exist inside any of these examples? What do they actually mean? 