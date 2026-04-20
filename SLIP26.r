##SLIP - 26
## Q1
# Total marbles
red <- 5
blue <- 7
total <- red + blue

# Total ways
total_ways <- choose(total, 4)

# At least 2 blue = 2B + 3B + 4B

# Case 1: 2 Blue, 2 Red
case1 <- choose(blue,2) * choose(red,2)

# Case 2: 3 Blue, 1 Red
case2 <- choose(blue,3) * choose(red,1)

# Case 3: 4 Blue, 0 Red
case3 <- choose(blue,4) * choose(red,0)


# Total favorable
fav <- case1 + case2 + case3

# Probability
prob <- fav / total_ways

cat("Probability of at least 2 blue marbles:", prob, "\n")

## Q2

# Given data
x <- 0:5
freq <- c(6,15,25,42,18,4)

# Total trials
N <- sum(freq)

# Mean
mean_val <- sum(x * freq) / N

# Probability p and q
n <- 5
p <- mean_val / n
q <- 1 - p

cat("Mean:", mean_val, "\n")
cat("p:", p, " q:", q, "\n")

# Expected frequencies
expected <- N * dbinom(x, size = n, prob = p)

# Display table
result <- data.frame(
  Heads = x,
  Observed = freq,
  Expected = round(expected,2)
)
print(result)

# Plot
barplot(rbind(freq, expected),
        beside = TRUE,
        col = c("red","green"),
        legend = c("Observed","Expected"),
        names.arg = x,
        main = "Observed vs Expected Frequencies")
