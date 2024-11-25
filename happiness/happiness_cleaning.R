#Install and import package to deal with the categorical variable, region.
install.packages("fastDummies")
library(fastDummies)

#Import the csv file and display the first few rows
HAPPY <- read.csv("export.csv")
head(HAPPY)

#Create dummy variables
HAPPY <- dummy_cols(HAPPY, select_columns = "region")
head(HAPPY)
HAPPY <- HAPPY[ -c(10) ]
head(HAPPY)
