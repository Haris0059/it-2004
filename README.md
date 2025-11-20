# IT 2004 - Parallel Programming 
GitHub Repository for Assignment Submissions for Parallel Programming.

## Assignment 7
- Implemented everything in PartialSum
- Added results.txt
- Modified Makefile to be able to run with 8 processes

### Output after running 4, 6 and 8 processes
- The output can also be found in [results.txt](/results.txt)
![alt text](image.png)
![alt text](image-1.png)


### Code Explanation
- This is an efficient way to calculate the starting index and local size for each process and at the same time it makes sure the global array is distributed evenly
```bash
    long ibegin = ncells * (rank) / nprocs;
    long iend = ncells * (rank + 1) / nprocs;
    int nsize = (int) (iend - ibegin);
```

- MPI_Allgather is used so that every process can efficiently share its calculated nsize with all the other processes
```bash
    MPI_Allgather(&nsize, 1, MPI_INT, nsizes, 1, MPI_INT, comm); 
```

- This is simple memory allocation to an array so that every process must independently use malloc and its own nsize to allocate memory
```bash
    double *a_local = (double *)malloc(nsize * sizeof(double));
```

- MPI_Scatterv splits the single global array held by Rank 0 and efficiently sends unequal-sized chunks to all other processes based on the calculated nsizes and offsets
```bash
    MPI_Scatterv(a_global, nsizes, offsets, MPI_DOUBLE,
                 a_local, nsize, MPI_DOUBLE, 0, comm);
```

- MPI_Reduce takes the local sum from every process, adds them all together, and stores the final answer in the total sum variable on Rank 0
```bash
MPI_Reduce(&local_sum, &total_sum, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD);
```
