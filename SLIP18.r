##SLIP - 18
##Q.1 
# Data 

year <- c(2000, 2001, 2002, 2004, 2005) 
students <- c(3500, 4100, 4300, 5000, 4900) 
 
# Bar plot 
barplot(students, 
        names.arg = year, 
        main = "Number of Students by Year", 
        xlab = "Year", 
        ylab = "No. of Students", 
        col = "skyblue", 
        border = "blue") 
 
# Add values on bars 
text(x = seq_along(students), y = students, 
     label = students, pos = 3) 
 
 

##Q.2
# Data 
city <- c("Nashik","Pune","Mumbai","Nagpur","Jalgaon") 
firs <- c(180,299,635,340,220) 
solved <- c(90,57,220,200,144) 
 
# Matrix for stacked bar 
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
 
# 2) Pie Chart (FIRs) 
pie(firs, 
    labels = city, 
    main = "City-wise FIRs", 
    col = rainbow(length(city))) 
 
# 3) City with highest FIRs 
max_fir_city <- city[which.max(firs)] 
cat("Highest FIRs city:", max_fir_city, "\n") 
 
# 4) City with highest Solved Cases 
max_solved_city <- city[which.max(solved)] 
cat("Highest Solved Cases city:", max_solved_city, "\n")
 
