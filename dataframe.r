emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)

#show data 
emp.data 

## show structure of data frame 
str(emp.data)

## summary of data frame 
print(summary(emp.data))  



# Extract Specific columns.
result <- data.frame(emp.data$emp_name,emp.data$salary)



# Extract first two rows.
result <- emp.data[1:2,]




# Extract 3rd and 5th row with 2nd and 4th column.
result <- emp.data[c(3,5),c(2,4)]
print(result)



# Add the "dept" coulmn.
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)



# Bind the two data frames.
emp.newdata <- emp.data
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)



##Joining Columns and Rows in a Data Frame
## cbind() , rbind()

# Create vector objects.
city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

# Combine above three vectors into one data frame.
addresses <- cbind(city,state,zipcode)


# Combine above three vectors into one data frame.
addresses <- rbind(city,state,zipcode)


######Merging Data Frames
library(MASS)
merged.Pima <- merge(x = Pima.te, y = Pima.tr,
                     by.x = c("bp", "bmi"),
                     by.y = c("bp", "bmi")
)
print(merged.Pima)
nrow(merged.Pima)

#####################
########################
# Create my_data
my_data <- iris
# Convert to a tibble
library("tibble")
my_data <- as_data_frame(my_data)
# Print
my_data

##
x <- c(1, 1, 4, 5, 4, 6)
unique(x)

##
unique(my_data)


###
# Install
install.packages("dplyr")
# Load
library("dplyr")

distinct(my_data)

# Remove duplicated rows based on Sepal.Length
distinct(my_data, Sepal.Length)


distinct_(my_data,  "Sepal.Length", "Petal.Width")


##where 
my_data
goodDiamods <- subset(my_data, my_data$Sepal.Length >5 )
goodDiamods <- subset(my_data, my_data$Sepal.Length >5 && my_data$Sepal.Width >4)


###
dataframe <- data.frame(
  x = c("apple", "orange", "banana", "strawberry"),
  y = c("a", "d", "b", "c"),
  z = c(4:1)
)

## by col index 
dataframe[
  order( dataframe[,2] ),
  ]

# Sort by vector name [z] then [x]
dataframe[
  with(dataframe, order(z, x)),
  ]


################
##################
install.packages("dplyr")
install.packages("ggplot2")

library(dplyr)    ## load the package
library(ggplot2)

###What is dplyr?
#The package dplyr provides easy tools for the most common data manipulation tasks. It is built to work directly with data frames. The thinking behind it was largely inspired by the package plyr which has been in use for some time but suffered from being slow in some cases.dplyr addresses this by porting much of the computation to C++
  
selected_col <- select(surveys, plot_id, species_id, weight)
head(selected_col)


