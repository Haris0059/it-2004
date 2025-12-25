# IT 2004 - Parallel Programming 
GitHub Repository for Assignment Submissions for Parallel Programming.

## Assignment 11

### Version 1
![alt text](image.png)
Only rank 0 reads and writes the file, while others wait which creates a massive bottleneck. Slowest execution when file size or number of processes increases.

### Version 2
![alt text](image-1.png)
All processes open the file and read their own chunk of data. Parallel read/write is much faster than Version 1. No central bottleneck, but no coordination which can cause contention.

### Version 3
![alt text](image-2.png)
Uses collective operations (MPI_File_write_all) and MPI hints. MPI coordinates I/O which reduces file system pressure. Usually faster and more scalable than Version 2 on real parallel file systems. On local machines or with few processes, Version 2 can sometimes be faster.

### Version 4
![alt text](image-3.png)
Uses derived datatypes to skip halo cells automatically. Good for scientific simulations and simplifies memory-to-file mapping.