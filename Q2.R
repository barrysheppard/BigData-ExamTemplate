# Student name: INSERT NAME HERE
# Student ID: INSERT ID HERE
# Date: 2018-11-21
# Exam for B8IT105 Programming for Big Data
# Lecturer Darren Redmond
###############################################################################





###############################################################################
#### DELETE NOTES BELOW HERE
###############################################################################

# If in doubt check https://www.statmethods.net/graphs/index.html

## BARPLOTS

# Prepare data for barplot
counts <- table(mtcars$gear)
# Simple Bar Plot
barplot(counts)
# Add Labels
barplot(counts,
        main="Car Distribution",
        xlab="Number of Gears",
        ylab='Number of Cars')
# Simple Horizontal Bar Plot with Added Labels
barplot(counts,
        names.arg=c("3 Gears", "4 Gears", "5 Gears")
)
# Rotating the text
barplot(counts,
        las=1 # options are 0 to 3
)
# We need two variables for stacked
counts <- table(mtcars$vs, mtcars$gear)
# Stacked Bar Plot
barplot(counts,
)
# Grouped Barplot
barplot(counts,
        beside=TRUE,
)
# Colors
barplot(counts,
        col=c("darkblue","red"),
)
# Legend
barplot(counts,
        legend = rownames(counts)
)

###############################################################################
# Scatter Plots

# Simple Scatterplot. Y ~ X
plot(mpg ~ wt, data=mtcars)

# Add fit lines
abline(lm(mpg~wt, data=mtcars), col="red") # regression line (y~x)
lines(lowess(mtcars$wt, mtcars$mpg), col="blue") # lowess line (x,y)

# Simple Scatterplot changing dots to triangles
plot(mpg ~ wt, data=mtcars,
     pch=2
)

# pch = 0,square
# pch = 1,circle
# pch = 2,triangle point up
# pch = 3,plus
# pch = 4,cross
# pch = 5,diamond
# pch = 6,triangle point down
# pch = 7,square cross
# pch = 8,star
# pch = 9,diamond plus
# pch = 10,circle plus
# pch = 11,triangles up and down
# pch = 12,square plus
# pch = 13,circle cross
# pch = 14,square and triangle down
# pch = 15, filled square
# pch = 16, filled circle
# pch = 17, filled triangle point-up
# pch = 18, filled diamond
# pch = 19, solid circle
# pch = 20,bullet (smaller circle)
# pch = 21, filled circle blue
# pch = 22, filled square blue
# pch = 23, filled diamond blue
# pch = 24, filled triangle point-up blue
# pch = 25, filled triangle point down blue
# Bonus Extra
# pch = "B" # Any single character can be used in quotes
# cex - 2 # This will double the size of the dot


###############################################################################
# Boxplot
boxplot(mpg~cyl,data=mtcars)

# Histogram
hist(mtcars$mpg)

# Histogram with Different Number of Bins
hist(mtcars$mpg,
     breaks=12
)

# Kernel Density Plot
d <- density(mtcars$mpg) # returns the density data 
plot(d)


