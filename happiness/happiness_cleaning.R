#Install and import package to deal with the categorical variable, region.
install.packages("fastDummies")
library(fastDummies)

#Import the csv file and display the first few rows
HAPPY <- read.csv("2019_happiness_cleaned.csv")
head(HAPPY)

#Create dummy variables, and remove "Australia & New Zealand" column
HAPPY <- dummy_cols(HAPPY, select_columns = "region")
HAPPY <- HAPPY[ -c(10) ]
head(HAPPY)
