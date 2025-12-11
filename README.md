# IT 2004 - Parallel Programming 
GitHub Repository for Assignment Submissions for Parallel Programming.

## Assignment 9

### Cuda
![alt text](image.png)

### OCL
![alt text](image-1.png)
OCL fails because it cannot find a Intel Integrated GPU. 

### OMP
![alt text](image-2.png)
OMP fails because Makefile is made for PGI/NVHPC compiler while we are trying to compile it with GCC which doesnt know about qthreaded

### OPENACC
![alt text](image-3.png)


### Lab GPU
![alt text](image-4.png)_
./StreamTriad is simple for loops working with CPU
./StreamTriad_par1 is parallelized for loops with #pragma acc parallel loop
./StreamTriad_par2 does mapping of all arrays a,b,c on GPU and in for loops we use present so it will not go to CPU for these arrays it will just get the data from the GPU
./StreamTriad_par3 is same as par2 just it has one more pragma which free's up data on GPU
./StreamTriad_par4 has acc_malloc which allocates memory and then deviceptr just tells them to directly use these arrays
./StreamTriad_kern1 is parallelized for loops with #pragma acc kernels
./StreamTriad_kern2 is same as kern1 we just use restrict to give compiler information these arrays are safe to use for parallelization
./StreamTriad_kern3 is same as par3 only with kernels