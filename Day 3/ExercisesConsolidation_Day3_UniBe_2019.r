# -------------------------------------------------------------------
# R course 2019
# Consolidation exercises
# -------------------------------------------------------------------

##########################
# DATA MANIPULATION ###
##########################

# Exercize 1 -----------------------------------------------------------------

# a) Create a vector v of length 100 with random values between 1000 and 2000 
#    included using the function sample()


# b) Transform this vector into a 5*20 matrix called m 
#    using the function matrix()

# b.1) Display the elements of the 2nd row of the matrix.

# b.2) Display the elements of the 3rd column of the matrix.

# b.3) Display the whole matrix without the 2nd row and the 3rd column.

# c) Rename the columns of this matrix as c1 to c20 and the rows to r1 to r5 using the functions colnames(), rownames() and paste()

# d) Rearrange m such that the entire matrix is sorted according 
#    to the values in the 3rd column using the function order().
#    You need to write this in two command lines. 
#    1st. save the index of rows after sorting according to 3rd column 
#         into one variable called index_sorted
#    2nd. sort the rows of m according to index_sorted and save it 
#         into a new matrix

# e) Rearrange m such that the 5th row of m is sorted by decreasing values
# Use the same reasoning as before, but look at the options of order() function to get as output the index after sorting for decreasing values


# Exercize 2 -----------------------------------------------------------------

# a) Create a 4 by 4 matrix called m2 with random integers 
#    between 1 and 100 using the functions sample() and matrix()

# b) Convert the matrix into a vector v using the function as.vector()

# c) Find the minimum value contained in v using the function min()

# d) What is(are) the index of this minimum value? 
#    Save those indeces into a variable called index_min

# e) Return the value of vector v at the index corresponding 
#    to the minimum value. 
#    What is the difference between the index and the value?

# f) Convert the vector v back into a 4 by 4 matrix called m3 
#    using the function matrix()

# g) Compute the sum of each column using the function sum() 
#    - this requires 4 lines of code, one for each column.

# h) Compute the sum of each column using the function colSums()
#    - this requires 1 line of code

######################################
# PLOTS AND GRAPHICS #################
######################################

# Exercise 3
# a)Load the data from the manuscript
#     Fragata I et al. (2014) # Laboratory Selection Quickly Erases Historical Differentiation. 
#     PLoS ONE 9(5): e96227. https://doi.org/10.1371/journal.pone.0096227
#   which is in the file:
#     "DrosophilaExperimentalEvolution.txt"
#   NOTE: missing data is coded as "MV"
# 
# In this study different life-history traits were measured
# in populations of Drosophila subobscura from different places
# adapting to the laboratory environment.
# The foundations (origin) were
#     Ad - Adraga in Portugal, 
#     Gro - Groningen in Netherlands, 
#     Mo - Monpellier in France
#     TA - control population that has been in the lab for 115 generations.
# Populations were kept in the laboratory for 25 generations
# and the following life-history traits were measured
#     age of first reproduction (number of days between emergence and the first egg laying - 'A1R'), 
#     early fecundity (total number of eggs laid during the first week of life - 'F1-7'), 
#     peak fecundity (total number of eggs laid between days 8 and 12 - 'F8-12'). 
#     Female starvation resistance was estimated as the number of hours until death (registered every 6 h after transfer to agar - 'RF'). 
# Each population was replicated three times. The aim was to understand if 
# life-history traits converge in the lab

# b) check the type of data with str() function 

# c) Plot the relationship between 
#    early fecundity and peak fecundity.
#    Adjust to xlim to be between 0 and 300.
#    Is there a relationship?
#    HINT: Use the following arguments for function plot() 
#    col=rgb(0.8,0.8, 0.8, 0.2), pch=1

# d) Add points with different colours 
#    to data from generation 6 and 22
#    using the function points()
#    with arguments
#    col=rgb(0.9,0.1, 0.1, 0.25), pch=19, cex=1.4 for gen 6
#    col=rgb(0.1,0.1, 0.9, 0.25), pch=19, cex=1.4 for gen 22

# e) Create two new data frames, one with
#    data from control foundation "TA",
#    and another with data from 
#    foundation from Monpellier "Mo"


# f) Plot the relationship between 
#    size and female starvation resistance
#    for the control (TA) foundation 
#    and perform a linear regression,
#    adding the regression line to the plot.
#    - What is the dependent variable?
#    - What is the independent variables?

# g) Perform the same analysis as in f)
#    but for foundation from Monpellier ("Mo")
#    at generation 6.


# h) plot two histograms comparing the Peak Fecundity 
#    at generation=6 and generation=22
#    for the foundation "Mo",
#    ensuring that the range of values
#    is the same in both histograms, between 0 and 300.
#    Use function hist() with argument freq=FALSE.
#    Does it seem that they changed through time?

# i) compare this distribution with the control
#    foundation "TA", which has been in the lab
#    for 115 generations, adding the histogram
#    to the existing plot, with argument
#    add=TRUE, freq=FALSE and border="green"

# j) Make the same comparison in the same plot 
#    using the function density()
