##SLIP - 28
## Q1
# Data
x <- c(0,1,2,3,4,5)
freq <- c(50,172,119,32,8,1)

# Less than cumulative frequency
cf_less <- cumsum(freq)

# More than cumulative frequency
cf_more <- rev(cumsum(rev(freq)))

# Plot Ogive curves
plot(x, cf_less, type="o", col="blue",
     xlab="No. of Children",
     ylab="Cumulative Frequency",
     main="Ogive Curves")

lines(x, cf_more, type="o", col="red")

legend("topleft",
       legend=c("Less than","More than"),
       col=c("blue","red"),
       lty=1)

# Median calculation
N <- sum(freq)
median_pos <- N/2

cat("Total N:", N, "\n")
cat("Median position:", median_pos, "\n")

# Find median
median_val <- x[which(cf_less >= median_pos)[1]]

cat("Median value:", median_val, "\n")

## Q2
# Data
x <- c(0,1,2,3,4)
freq <- c(25,9,8,5,4)

# Total frequency
N <- sum(freq)
# Mean
mean_val <- sum(x * freq) / N

# Quartiles (using replication method)
data <- rep(x, freq)

Q1 <- quantile(data, 0.25)
Q3 <- quantile(data, 0.75)

# Quartile Deviation
QD <- (Q3 - Q1) / 2

# Coefficient of QD
coeff_QD <- (Q3 - Q1) / (Q3 + Q1)

# Mean Deviation about Mean
MD <- sum(freq * abs(x - mean_val)) / N

# Standard Deviation
sd_val <- sqrt(sum(freq * (x - mean_val)^2) / N)

# Coefficient of Variation
CV <- (sd_val / mean_val) * 100
# Output
cat("Mean:", mean_val, "\n")

cat("Q1:", Q1, " Q3:", Q3, "\n")
cat("Quartile Deviation:", QD, "\n")
cat("Coefficient of QD:", coeff_QD, "\n")

cat("Mean Deviation about Mean:", MD, "\n")

cat("Standard Deviation:", sd_val, "\n")
cat("Coefficient of Variation:", CV, "%\n")
