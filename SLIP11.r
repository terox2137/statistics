##SLIP - 11
##Q.1
# Create two vectors of different length 
v1 <- c(1,2,3,4,5,6) 
v2 <- c(7,8,9,10) 
# Combine vectors 
v <- c(v1, v2) 
# Create array (2 rows, 3 cols, 2 matrices) 
arr <- array(v, dim = c(2,3,2)) 
# Print array 
print(arr) 
# Print 2nd row of 2nd matrix 
cat("Second row of second matrix:\n") 
print(arr[2,,2]) 

##Q.2
# Create data 
runs <- matrix(c( 
55,23,40,77,3,19,43,53,69,17, 
45,40,39,44,58,68,39,48,54,55, 
71,50,50,58,48,46,71,63,34,57, 
79,79,83,89,56,78,48,59,64,49, 
50,13,59,45,79,80,4,0,24,56 
), nrow = 5, byrow = TRUE) 
# Row names (Players) 
rownames(runs) <- c("Surya","Hardik","Shivam","Sanju","Abhishek") 
# Column names (Matches) 
colnames(runs) <- paste("M",1:10,sep="") 
# Display 
print(runs) 

# 1) Average score of each player 
avg_score <- rowMeans(runs) 
cat("Average score of each player:\n") 
print(avg_score) 
# 2) Highest score in each match 
max_score <- apply(runs, 2, max) 
cat("Highest score in each match:\n") 
print(max_score) 
# 3) Five-number summary for all matches 
cat("Five-number summary:\n") 
print(fivenum(runs))
