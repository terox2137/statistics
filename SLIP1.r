##SLIP - 1
##Q.1


# Given vector
num <- c(110, 20, 330, 40, 150, 660, 370, 980, 190, 100)

# Calculations
max_val    <- max(num)
min_val    <- min(num)
mean_val   <- mean(num)
median_val <- median(num)
sd_val     <- sd(num)

# Mode function
get_mode <- function(x) {
  uniq_x <- unique(x)
  uniq_x[which.max(tabulate(match(x, uniq_x)))]
}
mode_val <- get_mode(num)

# Display Results
cat("--- Q.1 Results ---\n")
cat("Maximum           :", max_val, "\n")
cat("Minimum           :", min_val, "\n")
cat("Mean              :", mean_val, "\n")
cat("Median            :", median_val, "\n")
cat("Mode              :", mode_val, "\n")
cat("Standard Deviation:", sd_val, "\n\n")

##Q.2

# Given data
sales <- c(100, 190, 210, 160, 150, 160, 190, 200, 170, 152)

# Means
am <- mean(sales)
gm <- exp(mean(log(sales)))
hm <- length(sales) / sum(1 / sales)

# Other measures
med <- median(sales)
q1  <- quantile(sales, 0.25)
d3  <- quantile(sales, 0.30)
p42 <- quantile(sales, 0.42)

# Mode function
get_modes <- function(x) {
  uniq <- unique(x)
  uniq[tabulate(match(x, uniq)) == max(tabulate(match(x, uniq)))]
}
mode_val <- get_modes(sales)

# Display Results
cat("--- Q.2 Results ---\n")
cat("Arithmetic Mean :", am, "\n")
cat("Geometric Mean  :", gm, "\n")
cat("Harmonic Mean   :", hm, "\n")
cat("Median          :", med, "\n")
cat("Mode            :", mode_val, "\n")
cat("Quartile (Q1)   :", q1, "\n")
cat("Third Decile (D3):", d3, "\n")
cat("42nd Percentile :", p42, "\n")
