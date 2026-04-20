##SLIP - 3
##Q.1
# Given data 
marks <- c(68,44,55,47,65,50,72,54,75,60,42,60,56,65,45,55,65,44) 
# Draw Box Plot 
boxplot(marks, main = "Box Plot of Marks",
 ylab = "Marks", 
col = "lightblue", 
border = "blue", 
horizontal = FALSE) 
# Add grid 
grid()

##Q.2
# Load dataset (already available in R) 
data(iris)
 # Scatter plot 
plot(iris$Sepal.Length, 
iris$Sepal.Width,
main = "Sepal Length vs Sepal Width", 
xlab = "Sepal Length", 
ylab = "Sepal Width",
 col = "blue", pch = 19)
 # Add grid 
grid()
