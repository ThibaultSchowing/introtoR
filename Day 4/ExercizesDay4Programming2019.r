# -------------------------------------------------------------------
# R course 2019
# Exercizes day 4
# -------------------------------------------------------------------

# Exercize 4.0 -------------------------------------------------------------------
# 
# a) Generate two random sequences seq1 and seq2 of 1000 numbers between 1 and 9
seq1 <- sample(1:9, 1000, replace = TRUE)
seq2 <- sample(1:9, 1000, replace = TRUE)

# b) Write a function compSeq that returns the number of positions at which seq1 and seq2 differ

compSeq <- function(seqa, seqb){
  # Will contain number of positions at which elements are the same.
  match <- 0
  if(length(seqa) != length(seqb)){
    print("Length of sequences don't match.")
    return(NULL)
  }
  else{
    for (idx in 1:length(seqa)) {
      if(seqa[idx] == seqb[idx]){
        match <- match + 1
      }
    }
  }
  
  return(length(seq1) - match)
}

print(compSeq(seq1, seq2))


# Exercize 4.1 -------------------------------------------------------------------
# 
#  a) Program the factorial function n! = n*(n-1)*(n-2)*...*1 with a for loop
#


factorial <- function(n){
  if(n < 0){
    print("Enter positive number")
    return(FALSE)
  }
  if(n == 0){
    return(1)
  }
  f <- 1
  for (x in 1:n) {
    f <- f * x
  }
  return(f)
}


# Exercize 4.2 -------------------------------------------------------------------
# 
# Create a function called MDintoNA that converts missing data into NA from a data frame.
# The function parameters is the data frame and the character string coding for missing data.
# The output of the function is the modified data frame and the number of entries with missing data.
# Then apply your function to the file "StatWiSo2003.txt"

MDintoNA <- function(inputdf, md = "?"){
  # R arguments are not passed by reference
  # we'll return a copy of inputdf
  
  # Number of entries with missing data (md)
  nbmd <- 0
  # loop over all elements
  for(i in 1:nrow(inputdf)){
    for(j in 1:ncol(inputdf)){
      if(inputdf[i,j] == md){
        nbmd <- nbmd + 1
        # NA is a logical constant, not a string. 
        inputdf[i,j] <- NA
      }
    }
  }
  results <- list(inputdf, nbmd)
  return(results)
}

df <- read.csv("StatWiSo2003.txt", header = TRUE, sep = '\t')
summary(df)
# repl is a list containing the dataframe with NA instead of a string for missing data
# and the number of missing data
repl <- MDintoNA(df)
newdf <- repl[[1]]
nbNA <- repl[[2]]


# Exercize 4.3.----------------------------------

# Write the code to simulate rolling a dice 100 times and to count the number of 6's
# in as few instructions as possible



# Exercize 4.4 ----------------------------------
# 
# Implement a function "numheads" returning the number of heads obtained by tossing a coin n times

# 
# Check that the number of heads r follows a binomial distribution with mean n/2
# For this, make a plot of the number of heads obtained by calling the function numheads 
# 10,000 times for n=50, and superimpose the corresponding binomial distribution of r

#Exercise 4.5 ----------------------------------
# 
# a) Read the file "PolymSites10KbExpGrowth.txt", which contains the polymorphic 
#    positions found in 100 sequences of 10 Kb drawn from a recently exponentially 
#    growing population

# b) Import the function convertStringToCharVector contained in the file 
#    "ConvertStringToCharVector.r" and use it to convert the DNA sequences 
#    into arrays of single nucleotides

# 
# c) Write a function that returns the number of positions at which two vectors 
#    are different and use it to compute the number of differences between all the 
#    possble pairs of DNA sequences

# 
# d) Plot the distribution of the number of differences, compute its mean and variance, 
#    and report on the graph the mean of the distribution in blue 


