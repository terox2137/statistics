##SLIP - 13
##Q.1 
# Input decimal number 
num <- 25 

# Convert to binary 
binary <- intToBits(num)  

# Extract first 8 bits and reverse 
binary_val <- rev(as.integer(binary[1:8])) 

# Display 
cat("Binary value of", num, "is:\n") 
print(binary_val) 

##Q.2 
# Class intervals 
classes <- c(5,10,15,20,25,30,35,40) 

# Frequencies 
freq <- c(2,7,16,34,13,6,2) 

# More than cumulative frequency 
more_than_cf <- rev(cumsum(rev(freq))) 

# Plot Ogive 
plot(classes[-1], more_than_cf, 
type = "o", 
main = "More Than Ogive Curve", 
xlab = "Length (cm)", 
ylab = "Cumulative Frequency", 
col = "blue", 
pch = 19)  
grid()
