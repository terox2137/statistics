##SLIP - 10
##Q.1 
# Create two data frames 
df1 <- data.frame(x = c(1,2,3,4), y = c("A","B","C","D")) 
df2 <- data.frame(x = c(3,4,5,6), y = c("C","D","E","F")) 
# Union 
union_df <- rbind(df1, df2) 
union_df <- unique(union_df) 
cat("Union:\n") 
print(union_df)  
# Intersection 
intersect_df <- merge(df1, df2) 
cat("Intersection:\n") 
print(intersect_df) 
# Set Difference (df1 - df2) 
diff_df <- setdiff(df1, df2) 
cat("Set Difference (df1 - df2):\n") 
print(diff_df) 
# Check Set Equality 
is_equal <- setequal(df1, df2) 
cat("Are df1 and df2 equal?:", is_equal, "\n") 

##Q.2 
# Generate 100 random numbers (0 to 100) 
set.seed(123) 
nums <- sample(0:100, 100, replace = TRUE) 

# Create class intervals 
breaks <- seq(0, 100, by = 10) 

# Count frequencies 
freq <- table(cut(nums, breaks = breaks, include.lowest = TRUE)) 
 
# Display table 
cat("Frequency Table:\n") 
print(freq) 
 
# Bar plot 
barplot(freq, 
        main = "Frequency Distribution (0-100)", 
        xlab = "Class Interval", 
        ylab = "Count", 
        col = "orange", 
        border = "brown")
