# Support Vector Machine and K Nearest Neighbors
 Support Vector Machine and K Nearest Neighbors Classification Model for Credit Card Data

Credit Approval Classification with SVM and k-NN
This repository contains R code to classify credit card applications using Support Vector Machines (SVM) and k-Nearest Neighbors (k-NN) algorithms. The dataset used is the "Credit Approval Data Set" from the UCI Machine Learning Repository, preprocessed to remove categorical variables and missing values.

Dataset:

credit_card_data.txt: Contains 654 data points with 6 continuous and 4 binary predictor variables, and a binary response variable indicating application approval (no headers).
credit_card_data-headers.txt: Same dataset as above but with headers.


Tasks:

SVM Classification:

Utilize the ksvm function from the kernlab package in R.
Find an optimal value for the cost parameter C to achieve good classification performance.
Determine the equation of the SVM classifier.
Evaluate the classifier's accuracy on the full dataset.
(Optional) Explore non-linear kernels for potentially improved performance.


k-NN Classification:

Employ the kknn function from the kknn package in R.
Determine an appropriate value for k (number of neighbors).
Evaluate the k-NN classifier's accuracy on the full dataset.
Implement data scaling using scale=TRUE.
Address the issue of self-inclusion in nearest neighbor search by excluding the data point itself during neighbor calculation.


Code:

The R code provided demonstrates the following:

Loading and preprocessing the dataset.
Implementing SVM classification with a linear kernel (vanilladot).
Calculating the SVM classifier equation coefficients (a0, a1...am).
Predicting application approval and evaluating accuracy.
Implementing k-NN classification.
Looping through the dataset to exclude the current data point in neighbor calculation.
Predicting application approval and evaluating accuracy.


Key Considerations:

SVM Parameter Tuning: Finding the optimal C value for the SVM classifier is crucial to avoid biased predictions (all "yes" or all "no").
k-NN Parameter Tuning: Selecting an appropriate k value is important for k-NN classification performance.
Data Scaling: Scaling the data is essential for both SVM and k-NN to ensure that features with larger values do not dominate the classification process.
Self-Inclusion in k-NN: The code addresses the issue of self-inclusion when finding nearest neighbors, which can lead to artificially high accuracy.
