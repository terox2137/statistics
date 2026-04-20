##SLIP - 8

##Q.1 
# User defined vectors 
v1 <- c(1, 2, 3, 4, 2, 3) 
v2 <- c("A", "B", "C", "D", "B", "C") 

# Create data frame 
df <- data.frame(v1, v2) 
# Display data frame 
print(df) 

# Find duplicate rows 
dup_rows <- df[duplicated(df), ] 
cat("Duplicate Rows:\n") 
print(dup_rows) 

# Find unique rows 
unique_rows <- unique(df) 
cat("Unique Rows:\n") 
print(unique_rows) 


##Q.2 
# Given data 
x <- c(1.8, 1.9, 2.5, 1.4, 1.3, 2.1, 2.3) 
y <- c(200, 270, 450, 160, 90, 440, 380) 
# Create linear model (y on x) 
model <- lm(y ~ x) 

# Display equation 
cat("Regression Equation:\n") 
print(coef(model))   # Intercept & slope 

# Predict y when x = 2 
predicted_y <- predict(model, data.frame(x = 2)) 
cat("Estimated y when x = 2:", predicted_y, "\n")
