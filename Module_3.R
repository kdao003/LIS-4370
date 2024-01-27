candidate <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")

ABC_poll_results <- c(4, 62, 51, 21, 2, 14, 15)

CBS_poll_results <- c(12, 75, 43, 19, 1, 21, 19) 

election <- data.frame(candidate, ABC_poll_results, CBS_poll_results)
election

mean(election$ABC_poll_results)
mean(election$CBS_poll_results)

ABC_Max <- max(election$ABC_poll_results)
CBS_Max <- max(election$CBS_poll_results)

ABC_Max
CBS_Max
print("Presidential Candidate Donald is the Winner with the most votes")
 
  
