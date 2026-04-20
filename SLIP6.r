##SLIP - 6
##Q.1

# Given data 
marks <- c(45, 70, 90, 66, 89) 
subjects <- c("M-I", "S-I", "C-I", "C-II", "IKS") 

# Bar plot 
barplot(marks, 
names.arg = subjects, 
main = “Marks of 5 Subjects”, 
xlab = “Subjects”, 
        ylab = “Marks”, 
        col = “skyblue”, 
        border = “blue”) 
 
# Add values on top 
text(x = seq_along(marks), y = marks, label = marks, pos = 3) 

 
  
##Q.2 

# Given data 
hours <- c(5,7,3,8,6,9) 
score <- c(80,85,60,90,75,95) 
 
# Scatter Plot 
plot(hours, score, 
     main = "Study Hours vs Exam Score", 
     xlab = "Study Hours", 
     ylab = "Exam Score", 
     col = "red", 
     pch = 19) 
 
grid() 
 
# Correlation 
corr_val <- cor(hours, score)  
cat("Correlation between Study Hours and Exam Score:", corr_val, "\n")
