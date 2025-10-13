# Homework1 wenson v1

library(readr)
HW1data <- read_csv("C:/Wenson/中山學院/114-1/Econometrics (I) (TA)/Homework/data/HW1data.csv")
View(HW1data)

X = as.matrix(HW1data$X)
Y = as.matrix(HW1data$Y)

# find M
n <- nrow(X)
I <- diag(1, n)  # 單位矩陣
i <- matrix(1, nrow = n, ncol = 1) # 全為 1 的列向量
iT <- t(i) # i 的轉置

M1 <- iT %*% i # (i*i)
M <- I - i %*% solve(M1) %*% iT # M = I - i(i'i)^(-1)i'

# find var(x) 
xT <- t(X)
Sxx <- xT %*% M %*% X
print(Sxx)

# 驗算
var(X)*1999

# find cov(x,y)
yT = t(Y)
Sxy <- yT %*% M %*% X
print(Sxy)

# 驗算
cov(X,Y) * 1999





