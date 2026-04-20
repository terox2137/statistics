##SLIP - 29
## Q1
# Data

country <- c("Cuba","Australia","Japan","Nepal","Egypt","India")
production <- c(320,300,50,10,9,200)

# Bar Plot
barplot(production,
        names.arg = country,
        col = "skyblue",
        main = "Sugar Production by Country",
        xlab = "Countries",
        ylab = "Production (in lakh quintals)",
        border = "black")

# Add values on top
text(x = seq_along(production),
     y = production,
     label = production,
     pos = 3)

## Q2
# Data
x <- c(70,80,90,100,110,120,130,140)  
f <- c(3,8,14,35,28,16,10,5)           

h <- 10   # class width
# Mid values
m <- x + 5

# Total frequency
N <- sum(f)

#MEAN
mean_val <- sum(f * m) / N

#MEDIAN
cf <- cumsum(f)
n2 <- N / 2

# find median class
i <- which(cf >= n2)[1]

L <- x[i]
fm <- f[i]
cf_prev <- ifelse(i == 1, 0, cf[i-1])

median_val <- L + ((n2 - cf_prev) / fm) * h

#MODE

i_mode <- which.max(f)

L1 <- x[i_mode]
f1 <- f[i_mode]
f0 <- ifelse(i_mode == 1, 0, f[i_mode - 1])
f2 <- ifelse(i_mode == length(f), 0, f[i_mode + 1])

mode_val <- L1 + ((f1 - f0) / (2*f1 - f0 - f2)) * h

#OUTPUT
cat("Mean =", mean_val, "\n")
cat("Median =", median_val, "\n")
cat("Mode =", mode_val, "\n")
