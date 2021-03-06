# MechaCar_Statistical_Analysis
The purpose of this analysis was to review the production data for insights that may help the manufacturing team at AutosRUs, where their newest prototype, the MechaCar, is suffering from production troubles.

## Linear Regression to Predict MPG

### Screenshot of the output from the summary of linear regression:

<img src="/Resources/linear_regression.png" >

### Analysis:
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle length and ground clearance provide a non-random amount of variance to the mpg values

2. Is the slope of the linear model considered to be zero? Why or why not?
- The slope of the linear model is not considered zero as the value of R-squared for the multiple linear regression model is 0.71 and the p-values are significant. We can reject our null hypothesis i.e. the slope of the linear model is zero.

3. Does this linear model predict the mpg of MechaCar prototypes effectively? Why or why not?
- Yes, the multiple linear regression model predicts mpg of MechaCar effectively as the R-squared / coefficient of correlation value is pretty high i.e. 0.71, and the p-values are significant

## Summary Statistics on Suspension Coils

### Screenshots of total  summary and lot summary dataframes

<img src="/Resources/total_summary.png" >

<img src="/Resources/lot_summary.png" >

### Analysis
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- While the manufacturing lots in total meet the specifications that the variance of the suspension coils must not exceed 100 pounds per square inch, Lot 3 does not. The variance for all manufacturing lots in total is 62.26 psi but the variance for Lot 3 is 170.28 psi which exceeds the required maximum variance of 100 psi.

## T-Tests on Suspension Coils

### Screenshots of the t-test

All Manufacturing Lots

<img src="/Resources/t-test_all.png" >

Lot 1

<img src="/Resources/t-test_lot1.png" >

Lot 2

<img src="/Resources/t-test_lot2.png" >

Lot 3

<img src="/Resources/t-test_lot3.png" >

### Analysis
Summary of interpretation and findings for the t-test results
- The t-test results further validate that there is something wrong with Lot 3. While we cannot reject our null hypothesis for lot 1, lot 2, and manufacturing lots in total because the p-values are above the significance level of 0.05, we can reject it for lot 3 because the p-value is below 0.05. We can conclude that there is a statistical difference between the observed sample mean of Lot 3 and the population mean of 1500.


## Study Design: MechaCar vs Competition
To quantify how the MechaCar performs against the competition, I recommend the following analysis:
1. What metric or metrics are you going to test?
 - I would like to test the time it takes for MechaCar to reach 60mph from 0mph compared with other cars in the same price range.
 - I would also like to test the torque of the MechaCar motor compared with that of other car motors with the same numbers of cylinders and strokes.

2. What is the null hypothesis or alternative hypothesis?
- The null hypothesis is that the means of all groups are equal. The alternate hypothesis is that at least the mean of one group is different from that of all the other groups.

3. What statistical test would you use to test the hypothesis? And why?
- Depending on the metric, I would use either the one-way ANOVA test or two-way ANOVA test i.e. to test 0-to-60, I will use one-way ANOVA, and to test torque, I will use two-way ANOVA. I chose ANOVA tests as they would allow me to test the means of a single dependent variable across one or two independent variables with multiple groups.

4. What data is needed to run the statistical test?
- To test 0-60 I need the following data: a dataframe with a column for 0-60 time in seconds (continuous dependent variable) and a column for price range (independent  - categorical variable) for various cards on the market
- To test motor torque, I need the following data: a dataframe with a column for motor torque in pounds (continuous dependent variable) and columns for numbers of cylinders and numbers of strokes for various cards on the market.