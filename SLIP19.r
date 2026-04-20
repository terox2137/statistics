##SLIP - 19
##Q.1 
# Data 
items <- c("Food", "Fertilizer", "Exports", "Others") 
percent <- c(20, 38, 27, 18)   # corrected 203 → 20 

# Pie chart 
pie(percent, 
labels = items, 
main = "Percentage of Subsidy", 
col = rainbow(length(items))) 

##Q.2 
# Create matrix 
runs <- matrix(c( 
55,23,40,77,3,19,43,53,69,17, 
45,40,39,44,58,68,39,48,54,55, 
71,50,50,58,48,46,71,63,34,57, 
79,79,83,89,56,78,48,59,64,49, 
50,13,59,45,79,80,4,0,24,56 
), nrow = 5, byrow = TRUE) 

# Row names (players) 
rownames(runs) <- c("Surya","Hardik","Shivam","Sanju","Abhishek")
 
# Column names (matches)  
colnames(runs) <- paste("M",1:10,sep="") 

# Display 
print(runs) 

# 1) Average score of each player 
avg_score <- rowMeans(runs) 
cat("Average score:\n") 
print(avg_score) 

# 2) Highest score in each match 
max_score <- apply(runs, 2, max) 
cat("Highest score in each match:\n") 
print(max_score) 

# 3) Five-number summary 
cat("Five-number summary:\n") 
print(fivenum(runs))
