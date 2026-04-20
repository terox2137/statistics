##SLIP - 27
## Q1
# Data
commodity <- c("Food","Rent","Clothes","Education","Savings","Miscellaneous")
expenditure <- c(300,200,125,110,90,75)

# Pie Chart
pie(expenditure,
    labels = commodity,
    main = "Expenditure Distribution",
    col = rainbow(length(commodity)))

# Percentage display
percent <- round(expenditure / sum(expenditure) * 100, 2)

# Show table
result <- data.frame(Commodity = commodity, Expenditure = expenditure, Percentage = percent)
print(result)

## Q2
# Runs data
A <- c(101,27,0,36,82,45,7,13,65,14)
B <- c(97,12,40,96,13,8,85,8,56,15)

# Mean
mean_A <- mean(A)
mean_B <- mean(B)

# Standard Deviation
sd_A <- sd(A)
sd_B <- sd(B)

# Output
cat("Mean of A:", mean_A, "\n")
cat("Mean of B:", mean_B, "\n")
cat("SD of A:", sd_A, "\n")
cat("SD of B:", sd_B, "\n")

# Decision
if(sd_A < sd_B){
  cat("Batsman A is more consistent\n")
} else {
  cat("Batsman B is more consistent\n")
}
 
