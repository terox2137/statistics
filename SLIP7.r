##SLIP - 7
##Q.1 
# Create data frame 
Name <- c("Amit", "Ravi", "Sita", "Neha", "Karan") 
Gender <- c("M", "M", "F", "F", "M") 
Age <- c(25, 30, 28, 26, 27) 
Designation <- c("Manager", "Clerk", "HR", "Analyst", "Developer") 
empdetails <- data.frame(Name, Gender, Age, Designation) 

# Sort in ascending order of Name 
sorted_emp <- empdetails[order(empdetails$Name), ] 

# Display 
print(sorted_emp) 

##Q.2
# Given data 
demand <- c(20,32,45,21,19,23,47,67,34) 
supply <- c(16,38,54,25,20,20,42,66,40) 
# Scatter Plot 
plot(demand, supply, 
main = "Demand vs Supply", 
xlab = "Demand", 
ylab = "Supply", 
col = "darkgreen", 
pch = 19) 
grid() 

# Correlation 
corr_val <- cor(demand, supply) 
cat("Correlation between Demand and Supply:", corr_val, "\n")
 
