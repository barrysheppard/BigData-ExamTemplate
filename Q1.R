# Student name: INSERT NAME HERE
# Student ID: INSERT ID HERE
# Date: 2018-11-21
# Exam for B8IT105 Programming for Big Data
# Lecturer Darren Redmond
###############################################################################





###############################################################################
## NOTES DELETE BELOW BEFORE SUBMITTING ###

# Get the Data

# Install package
install.packages('MASS')
library(MASS)

# Load from file
data <- read.csv("filename.csv")

# Data inbuilt
?mtcars

# Data from package
data(Boston)

# Info on the data loaded (not from file)
?Boston

# data structure
str(Boston)

# Basic review of the data
head(Boston)
tail(Boston)
summary(Boston)


# Some other data view options

# list the variables in mydata
names(mydata)

# list the structure of mydata
str(mydata)

# list levels of factor v1 in mydata
levels(mydata$v1)

# dimensions of an object
dim(object)

# class of an object (numeric, matrix, data frame, etc)
class(object)

# print mydata 
mydata

# print first 10 rows of mydata
head(mydata, n=10)

# print last 5 rows of mydata
tail(mydata, n=5)


# Missing data

# Testing for Missing Values
is.na(x) # returns TRUE of x is missing
y <- c(1,2,3,NA)
is.na(y) # returns a vector (F F F T)

# Recoding Values to Missing
# recode 99 to missing for variable v1
# select rows where v1 is 99 and recode column v1 
mydata$v1[mydata$v1==99] <- NA

# Excluding Missing Values from Analyses
x <- c(1,2,NA,3)
mean(x) # returns NA
mean(x, na.rm=TRUE) # returns 2

# list rows of data that have missing values 
mydata[!complete.cases(mydata),]

# create new dataset without missing data 
newdata <- na.omit(mydata)


