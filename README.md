# IT 2004 - Parallel Programming 
GitHub Repository for Assignment Submissions for Parallel Programming.

## Assignment 12

### Sequential Word Count
![alt text](image.png)

### MPI Word Count
![alt text](image-2.png)

Comparison: Sequential processes 3.09M words per second while MPI with 8 processes does 18.96M word per seconds. MPI / Parallel execution achives a 610% speedup using 8 processes

Usingg sorting for the shuffle/grouping phase would be slower than a hash table. Hash tables group words in O(n) time on average, while sorting requires O(n log n) time. For large datasets with millions of unique words, the extra sorting cost and MPI synchronization overhead would increase total execution time. Hash tables therefore provide better performance and scalability in this word-count implementation.