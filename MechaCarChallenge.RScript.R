# import dplyr library
library(dplyr)

#turn off statistical notation
options(scipen = 999)

#read in MechaCar_mpg CSV data as a data frame
DF <- read.csv('/Users/jenniferklein/Documents/Bootcamp/Module15-R/Challenge/MechaCar_mpg.csv')

#examine sample of data
head(DF)

#perform linear regression with mpg (independent variable) and the columns from the data file (dependent variables)
linearModel <- lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = DF)

summary(linearModel)
#multiple r squared 71% - predicting correctly
#p value 0.0000000000535
#low p value means strong relationship between variables
