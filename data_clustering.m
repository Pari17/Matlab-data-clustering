% KMeans clustering
% generate a training data of a 100 by 2 vector consisting of random 
% numbers from 0-100. 
x = rand(100,2)*100; 

% position the training data into 3 clusters.
% Increase the number of clusters to 4, 5, 9, 20 to compare graphs
idx = kmeans(x,20);

% Plot the training data
gscatter(x(:,1),x(:,2),idx)
title("Data in 20 Clusters")
% legend("Region 1", "Region 2", "Region 3");
hold off;

% Gaussian Mixture Models (GMM)
x = rand(100,2)*100;
% Increase the number of clusters to 4, 5, 9, 20 to compare graphs
% Expected error with clusters 5 and 9 the system outputs a warning message 
% that states that it has failed to converge in 100 iterations. With 20 
% clusters no plot will be displayed
gx = fitgmdist(x,20);
clsx = cluster (gx,x)
gscatter(x(:,1),x(:,2),clsx)
title("Data using GMM Clusters")
%legend("Region 1", "Region 2", "Region 3");
hold off;