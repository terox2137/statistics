##SLIP - 14
##Q.1 # Data
sales <- c(100, 190, 210, 160, 150, 160, 190, 200, 170, 152)

# Summary Statistics
summary(sales)

##Q.2 
# Given rate (lambda) 
lambda <- 10 

# 1) P(X = 8) 
p1 <- dpois(8, lambda) 
cat("P(X = 8):", p1, "\n") 

# 2) P(X ≤ 8) 
p2 <- ppois(8, lambda) 
cat("P(X ≤ 8):", p2, "\n") 

# 3) P(X > 8) 
p3 <- 1 - ppois(8, lambda) 
cat("P(X > 8):", p3, "\n") 

# 4) 90th percentile 
p4 <- qpois(0.90, lambda) 
cat("90th percentile:", p4, "\n") 

# 5) Generate 15 random values 
set.seed(123) 
rand_vals <- rpois(15, lambda)  
cat("Random Poisson values:\n") 
print(rand_vals)
 
