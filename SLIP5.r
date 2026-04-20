##SLIP - 5
##Q.1

install.packages("moments")

library(moments)

data <- c(2,3,5,6,8,9,12,18,21)

skew_val <- skewness(data)


kurt_val <- kurtosis(data)

cat("Skewness:", skew_val, "\n")
cat("Kurtosis:", kurt_val, "\n")

##Q.2.

# Given data
A <- c(54,56,78,21,45,32,78,53,65,54)
B <- c(32,46,62,27,49,59,90,76,43,65)

# Scatter Plot
plot(A, B,
     main = "Scatter Plot of Subject A vs B",
     xlab = "Subject A",
     ylab = "Subject B",
     col = "blue",
     pch = 19)

grid()

# Correlation
corr_val <- cor(A, B)
cat("Correlation between A and B:", corr_val, "\n")

# Boxplot (separate line)
boxplot(mtcars$mpg, main="Boxplot of mtcars")

