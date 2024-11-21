library(kernlab)

data <- read.table("C:\\Users\\rache\\OneDrive - iaarc\\Documents\\Gatech MM\\ISYE Introduction to Analytics Modeling\\Homework 1\\hw1-SP22\\data 2.2\\credit_card_data-headers.txt", header = TRUE)

matrix <- as.matrix(data)

c_values <- as.list(c(10^(-5:5)))

predictionsmatch <- c()

for (i in seq_along(c_values)) {
  
  c <- c_values[[i]]
  
  model <- ksvm(as.matrix(matrix[,1:10]), matrix[,11], type="C-svc", kernel = "vanilladot", C=c, scaled=TRUE)
  
  a0 <- -model@b
  
  a <- colSums(model@xmatrix[[1]] * model@coef[[1]])
  
  pred <- predict(model, matrix[,1:10])
  
  predictionsmatch[i] <- sum(pred==matrix[,11])/nrow(matrix)
  
  print(paste("c:", c_values[[i]], "prediction:", predictionsmatch[i])) }

print(model)
