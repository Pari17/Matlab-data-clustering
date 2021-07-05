# Matlab-data-clustering
The matlab file contains code to understand different types of clustering and how they work. The data clustering methods tested are K means and Gaussian Mixture Models (GMM) clustering

The code also asks the user to input different number of clusters to observe their impact. The following observations can be made by increasing clusters for both methods.

Increasing clusters in Kmeans method:
With K-means clustering it is vital to define K (number of clusters) to perform the algorithm. The 
scatterplots above show the data clusters with the default value 3, 4, 5, 9, and 20. It can be observed 
that when the number of clusters increase the data clusters get smaller and more specific and 
different initial partitions can result in different final clusters. Furthermore, increasing the value of k 
without penalty will always reduce the amount of error in the resulting clustering, to the extreme 
case of zero error if each data point is considered its own cluster (i.e., when k equals the number of 
data points, n). Intuitively then, the optimal choice of k will strike a balance between maximum 
compression of the data using a single cluster, and maximum accuracy by assigning each data point 
to its own cluster. An appropriate value of k must be chosen somehow. Therefore, to find optimal 
number of clusters, that can be done so via methods like elbow, silhouette, x-means, etc. 

Increasing clusters in GMM method:
The GMM clustering is an effective data clustering method, the scatterplots above show the data 
clusters with the default value 3, 4, 5, 9, and 20. It can be observed that initially when using the 
values 3 and 4 clusters, the scatterplot was displayed with no warning or error messages and divided 
the area respectively. However, with clusters 5 and 9 the system outputs a warning message that 
states that it has failed to converge in 100 iterations for gm distribution with 5 or 9 components. 
Further, when we try it with 20 clusters it does not display a plot at all. The outputs discussed could 
be cause due to overlapping of data, some or all the features may be discrete, the number of 
dimensions of your data is relatively high and there are not enough observations or maybe it 
would have converged at iteration 101, then the result at 100 would be pretty much the same. 
