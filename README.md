# R_Statistical_Analysis_MPG

## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. To help the manufacturing team, the following analyses were performed: 

* Multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* T-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

### Resources
* R

## Summary of Results
### Linear Regression to Predict MPG

![Screen Shot 2021-06-13 at 6 35 51 PM](https://user-images.githubusercontent.com/69849998/121823914-4756a500-cc76-11eb-841a-8836e394aa67.png)


A multiple linear regression uses multiple independent variables to account for parts of the total variance observed in the dependent variable. In this case, MPG is the dependent variable, while vehicle length, vehicle weight, spoiler angle, ground_clearance and AWD are the independent variables. 

Vehicle length and ground clearance (as well as the intercept) all have p values below 0.05 - 0.0000000000026 and 0.0000000521269 (0.0000000507794) - and and have been marked with three asterisks, demonstrating they are statistically significant variables. These three variables are statistically unlikely to provide random amounts of variance to the linear model, as they have a significant impact on MPG. On the other hand, vehicle weight, spoiler angle and AWD likely do not contribute to the linear model as, their p-values are above 0.05 - 0.0776, 0.3069 and 0.1852.

The equation for the slope of a multiple linear regression is calculated using the formula y = m1x1 + m2x2 + … + mnxn + b, for all independent x variables and their m coefficients.The slope of the linear model is not considered to be 0 since the predictors (vehicle length and ground clearance) likely impact MPG, as demonstrated by their p-values being less than zero. 

-103.963979 + (14.69710 * 6.267128) + (6407.946 * 0.001245) + (48.78998 * 0.068766) + (14.640983 * 3.545534) - (1 * 3.411499) = 47.97622

This linear model of MechaCar prototypes sufficiently predicts our dependent variable of MPG, as shown by the relatively high adjusted R-squared value of 68%. 68% of the time the variation can be attributed to the predictor variables. 

### Summary Statistics on Suspension Coils
* Summary Statistics for All Manufacturing Lots
<img width="312" alt="Screen Shot 2021-06-13 at 9 59 20 AM" src="https://user-images.githubusercontent.com/69849998/121823856-dd3e0000-cc75-11eb-832a-b94e77232ae8.png">

* Summary Statistics broken down by Manufacturing Lots
<img width="437" alt="Screen Shot 2021-06-13 at 10 13 06 AM" src="https://user-images.githubusercontent.com/69849998/121823861-e4650e00-cc75-11eb-83c8-8bf0876aa8bb.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all lots as it falls within the 100PSI at 62.29356. It does as well for lots 1 and 2 at 0.9795918 PSI and 7.4693878, however Lot3 does not as it exceeds the threshold at 170.2861224


### T-Tests on Suspension Coils

* T-Test of all Manufacturing lots
<img width="322" alt="Screen Shot 2021-06-13 at 1 18 47 PM" src="https://user-images.githubusercontent.com/69849998/121823613-63594700-cc74-11eb-80b5-9cc0f097adcc.png">

One sample t-test of all manufacturing lots PSI returns a result of -1.8931, which is below the significance level of 0.05. This indicates that the mean PSI for all manufacturing lots is statistically different from the population mean of 1500. 

* T-Test of Lot 1

 ![Screen Shot 2021-06-13 at 6 30 15 PM](https://user-images.githubusercontent.com/69849998/121823779-69035c80-cc75-11eb-832a-2f6b5f6468e1.png)

 One sample t-test of the Lot1 Manufacturing Lot PSI returns a result of 0, which is below the significance level of 0.05. This indicates that the mean PSI for Lot1 is statistically different from the population mean of 1500. 

* T-Test of Lot 2

 ![Screen Shot 2021-06-13 at 6 26 05 PM](https://user-images.githubusercontent.com/69849998/121823714-1164f100-cc75-11eb-8821-2b93eef94ddb.png)


 One sample t-test of the Lot2 Manufacturing Lot PSI returns a result of 0.51745, which is above the significance level of 0.05. This indicates that the mean PSI for Lot2 is statistically similar the population mean of 1500. 

* T-Test of Lot 3

 ![Screen Shot 2021-06-13 at 6 26 21 PM](https://user-images.githubusercontent.com/69849998/121823709-0a3de300-cc75-11eb-9e84-3b8ed9aba952.png)

 One sample t-test of the Lot3 Manufacturing Lot PSI returns a result of -2.0916, which is below the significance level of 0.05. This indicates that the mean PSI for Lot3 is statistically different from the population mean of 1500. 


### Study Design: MechaCar vs BMW Z4 2seater
Study: Test statistical difference in fuel efficiency between MechaCar vs. BMW Z4 2seater
* Data required: MPG fuel efficiency for MechaCar and BMW Z4 2seater
* statistical tests: t-test & linear regression 
* Hypotheses:
  * Null hypothesis -> MechaCars are more fuel efficient than the BMWs
  * Alternative hypothesis -> MechaCars are NOT more fuel efficient than compared to BMWs
  
If the t-test result and p-test results are less than the 0.05, we would have enough statistical evidence to reject our null hypothesis and conclude that the MechaCar outperforms the Z4 in fuel efficiency. 

