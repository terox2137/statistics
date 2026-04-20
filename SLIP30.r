##SLIP - 30
## Q1
# Data
country <- c("Cuba","Australia","Japan","Nepal","Egypt","India")
production <- c(320,300,50,10,9,200)

# Bar Plot
barplot(production,
        names.arg = country,
        col = "skyblue",
        main = "Sugar Production",
        xlab = "Countries",
        ylab = "Production (lakh quintals)")

# Values on bars
text(seq_along(production), production, labels = production, pos = 3)

## Q2
# Given values
mu <- 210        # population mean
x_bar <- 212.79  # sample mean
sigma <- 8.5     # population SD
n <- 42          # sample size
alpha <- 0.05

# Z test statistic
Z <- (x_bar - mu) / (sigma / sqrt(n))

# Critical value (right-tailed test)
Z_crit <- qnorm(1 - alpha)

# Output
cat("Z value =", Z, "\n")
cat("Critical value =", Z_crit, "\n")

# Decision
if(Z > Z_crit){
  cat("Reject H0 → Mean is significantly greater than 210\n")
} else {
  cat("Fail to Reject H0 → Not significant\n")
}
