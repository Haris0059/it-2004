# IT 2004 - Parallel Programming 
GitHub Repository for Assignment Submissions for Parallel Programming.

## Assignment 10

### slurm.conf
![alt text](image-2.png)

### compute.sh
![alt text](image-1.png)
Compute is not working it is in the squeue, in completing stage but it is never compliting and it is stopping all batchs from running. I have tried canceling it with scancel but it doesn't work, I have also tried pkilling it but it will just create a new one after killing it. The only way to cancel the job is to shut down the whole thing. When you up it it still comes back to completing stage and stops everything.

### overload.sh 
![alt text](image.png)
Works only when running it manually due to compute.sh problems