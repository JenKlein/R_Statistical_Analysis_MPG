## Linear Regression to Predict MPG

# import dplyr library
library(dplyr)

#turn off scientific notation
options(scipen = 999)

#read in MechaCar_mpg CSV data as a data frame
DF <- read.csv('/Users/jenniferklein/Documents/Bootcamp/Module15-R/R_Statistical_Analysis_MPG/MechaCar_mpg.csv')

#examine sample of data
head(DF)

#perform linear regression with mpg (independent variable) and the columns from the data file (dependent variables)
linearModel <- lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = DF)

summary(linearModel)
#multiple r squared 71% - predicting correctly
#p value 0.0000000000535
#low p value means strong relationship between variables

#calculating slope
mpgvalue = (14.69710 * 6.267128) + (6407.946* 0.001245) + (48.78998*0.068766) + (14.640983* 3.545534) - (1*3.411499)
mpgvalue

## Summary Statistics on Suspension Coils
#read in Suspension_Coil.csv data as a table
susCoils_table <- read.csv('/Users/jenniferklein/Documents/Bootcamp/Module15-R/R_Statistical_Analysis_MPG/Suspension_Coil.csv')
susCoils_table

total_summaryDF <- summarize(susCoils_table, mean(PSI), median(PSI), var(PSI), sd(PSI))

#creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing 
#lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
grouped_lot <- susCoils_table %>% group_by(Manufacturing_Lot)
lot_summary <- summarize(grouped_lot, mean(PSI), median(PSI), var(PSI), sd(PSI))
