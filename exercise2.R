library(dplyr)
library(xlsx)

###
#0: Load the data in RStudio
titanic_original <- read.xlsx(file="titanic3.xls",sheetIndex = 1)

###
#1: Port of embarkation

#list the unique values under Embarked column
unique(titanic_original$embarked)
#[1] S    C    <NA> Q   

#replacing NA values with 'S'
titanic_original$embarked[is.na(titanic_original$embarked)] <- "S"

#unique(titanic_original$embarked) now returns only 3 unique values
#[1] S C Q

###
#2: Age

#Calculate mean age and round up to a whole number
mean_age <- round(mean(titanic_original$age,na.rm = TRUE),digits=0)
#replace NA age values with mean age
titanic_original$age[is.na(titanic_original$age)] <- mean_age

###
