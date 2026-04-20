##SLIP - 22
##Q.1 
# Observed frequencies 
obs <- c(30, 25, 18, 10, 22, 15) 
# Expected frequencies (equal probability) 
exp <- rep(120/6, 6) 

# Chi-square test 
chi_test <- chisq.test(x = obs, p = rep(1/6, 6)) 
cat("Chi-Square Test Result:\n") 
print(chi_test) 

##Q.2 
# Load dataset 
data(iris) 
# 1) Structure 
cat("Structure:\n") 
str(iris) 
# 2) Summary 
cat("\nSummary:\n") 
summary(iris)  
# 3) Column names 
cat("\nColumn Names:\n") 
colnames(iris) 

# 4) Unique species 
cat("\nUnique Species:\n") 
unique(iris$Species) 

# 5) Scatter plot 
plot(iris$Sepal.Length, iris$Sepal.Width, 
main = "Sepal Length vs Sepal Width", 
xlab = "Sepal Length", 
ylab = "Sepal Width", 
col = "blue", 
pch = 19) 
grid()
 
