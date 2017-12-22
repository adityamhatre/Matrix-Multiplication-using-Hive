# Matrix-Multiplication-using-Hive
You are asked to re-implement Project #1 (matrix multiplication) using Apache Hive. This time, you need to store the result of the multiplication into a Hive table and then write a Hive query that counts the number of matrix elements and the average matrix value of the multiplication result. An empty multiply.hql is provided as well as a script to run this code on Comet. The input matrices are the same as in Project1. There are two small sparce matrices 4*3 and 3*3 in the files M-matrix-small.txt and N-matrix-small.txt for testing in local mode. For these matrices, your program should print the following COUNT and AVG:

12	15.5
Then there are 2 moderate-sized matrices 200*100 and 100*300 in the files M-matrix-large.txt and M-matrix-large.txt for testing in distributed mode. For these matrices, your program should print the following COUNT and AVG:
59889	-0.06041565604668677
