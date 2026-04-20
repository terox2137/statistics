##SLIP - 15
##Q.1 
for(i in 1:100){ 
cat(i, " ") 
if(i %% 3 == 0){ 
cat("S.Y.B.Sc.\n") 
} 
} 

##Q.2
# Data 
g1 <- c(25,27,22,20,23,22,26,25,29,20) 
g2 <- c(18,21,23,21,19,20,21,23,27,29) 
g3 <- c(23,25,28,23,29,27,29,30,30,27) 

# 1) Test Group1 vs hypothesized mean = 27 
t1 <- t.test(g1, mu = 27) 
cat("Test 1: Group1 vs 27\n") 
print(t1) 


# 2) Test difference between Group1 and Group3 
t2 <- t.test(g1, g3) 
cat("\nTest 2: Group1 vs Group3\n") 
print(t2) 

# 3) Test if Group3 > Group2 (one-tailed test) 
t3 <- t.test(g3, g2, alternative = "greater") 
cat("\nTest 3: Group3 > Group2\n") 
print(t3)
 
