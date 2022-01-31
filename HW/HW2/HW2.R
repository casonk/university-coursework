# 1-30-2022 , Name: Cason Konzer

# Preview mtcars dataset
mtcars

# Set variables for naming.
mpg = mtcars$mpg
weight = mtcars$wt

# Find Correlation.
cor(mpg, weight)

# Make scatterplot.
plot(mpg, weight)

# To coincide with the example given in the assignment. (:
plot(weight, mpg)