library(kknn)
data <- read.table("C:\\Users\\rache\\OneDrive - iaarc\\Documents\\Gatech MM\\ISYE Introduction to Analytics Modeling\\Homework 1\\hw1-SP22\\data 2.2\\credit_card_data-headers.txt", header = TRUE)

# create a vector of just 0's which will contain the predictions
knnpredictions <- rep(0, nrow(data)) 

# create an empty vector for how accurate each k attempt is
knnaccuracy <- vector("numeric")

# create a for loop to iterate through many values of k
for(k in 1:15) { 
  for (i in 1:nrow(data)) { 
    model <- kknn(data[-i,11]~.,
                      data[-i,1:10], #training data on all points except for i
                      data[i,1:10], #testing data on all points including i
                      k = k,
                      distance = 2,
                      kernel = "optimal",
                      scale = TRUE)
    # round the continuous predictions into binary 0 or 1
    knnpredictions[i] <- round(fitted(model)) 
    # calculate the accuracy for trying each k value
    knncorrectpredictions <- sum(knnpredictions == data[,11]) / nrow(data) 
    
    
  }
  
  cat("For k=", k, ", the accuracy is:", knncorrectpredictions, "\n")
  knn_acc_vector <- c(knnaccuracy, knncorrectpredictions)
 
  
}

print(model)

