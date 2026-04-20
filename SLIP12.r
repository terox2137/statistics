##SLIP - 12
##Q.1 
# Vectors
v1 <- c(10, 25, 5, 40)
v2 <- c(30, 15, 20, 35)

# Concatenate vectors
v <- c(v1, v2)

# Sort in descending order
result <- sort(v, decreasing = TRUE)

# Display result
result
 

##Q.2 
# Data
city <- c("Nashik","Pune","Mumbai","Nagpur","Jalgaon")
firs <- c(180,299,635,340,220)
solved <- c(90,57,220,200,144)

# Create matrix
data_mat <- rbind(firs, solved)
colnames(data_mat) <- city

# 1) Stacked Bar Plot
barplot(data_mat,
        main = "FIRs vs Solved Cases",
        xlab = "Cities",
        ylab = "Count",
        col = c("red","green"),
        legend = c("FIRs","Solved"),
        beside = FALSE)

# 2) Pie Chart
pie(firs,
    labels = city,
    main = "City-wise FIRs",
    col = rainbow(length(city)))

# 3) Highest FIRs
max_fir_city <- city[which.max(firs)]
cat("City with highest FIRs:", max_fir_city, "\n")

# 4) Highest Solved Cases
max_solved_city <- city[which.max(solved)]
cat("City with highest solved cases:", max_solved_city, "\n")

