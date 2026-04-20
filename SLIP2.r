##SLIP - 2
##Q.1

# Given values 
mean_val <- 70 
sd_val <- 2 
x <- 74 
# Probability P(X > 74) 
prob <- 1 - pnorm(x, mean = mean_val, sd = sd_val) 
# Percentage 
percentage <- prob * 100 
cat("Percentage of males taller than 74 inches:", percentage, "%\n")

##Q.2
x <- c(2,5,9,7,11,6,5,2,7,9,3,2,8,12,14,6,3,9,8,7)

range_val <- max(x)-min(x)
coeff_range <- (max(x)-min(x))/(max(x)+min(x))

Q1 <- quantile(x,0.25)
Q3 <- quantile(x,0.75)

QD <- (Q3-Q1)/2
coeff_QD <- (Q3-Q1)/(Q3+Q1)

MD <- mean(abs(x-mean(x)))
CV <- (sd(x)/mean(x))*100

range_val
coeff_range
QD
coeff_QD
MD
CV
