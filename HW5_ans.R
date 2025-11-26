library(readxl)
data <- read_excel("C:/Wenson/中山學院/114-1/Econometrics (I) (TA)/Homework/data/HW5data.xlsx")
View(data)

#Set X,Y matrix
X <- as.matrix(data[, 2:6])  
Y <- as.matrix(data[, 1])    

#find Beta=(t(X)X)^-1t(X)Y
Beta <- solve(t(X)%*%X)%*%t(X)%*%Y
View(Beta)

#find error=Y-Beta*X
error <- Y - X%*%Beta
View(error)

#find X*error
X_t_error <- t(X)%*%error
View(X_t_error)

#find error
sum(error)