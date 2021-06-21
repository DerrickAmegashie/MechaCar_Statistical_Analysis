# MechaCar_Statistical_Analysis

## Linear Regression to Predict

              Call:
              lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
                  ground_clearance + AWD, data = mechacar_table)

              Residuals:
                   Min       1Q   Median       3Q      Max 
              -19.4701  -4.4994  -0.0692   5.4433  18.5849 

              Coefficients:
                                 Estimate Std. Error t value Pr(>|t|)    
              (Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
              vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
              vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
              spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
              ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
              AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
              ---
              Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

              Residual standard error: 8.774 on 44 degrees of freedom
              Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
              F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11


- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle weight, spoiler_angle & AWD provided a non-random amount of variance. 

- Is the slope of the linear model considered to be zero? Why or why not?
It can’t be 0 Bc it is affecting it .from the stars they are very significant positively affecting our mpg

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The main indicator of whether the linear model predicts the mpg of the MechaCar effectively is the r-squared value.  It is at 0.7149 mean that out of 100 instances. This means that the model would approximately predict the mpg of the MechaCar correctly 71 times. This model would be considered effective.


## Summary Statistics on Suspension Coils

This section is made up of suspension coils dataset. It comprises of 150 different vehicles ID, 3 different lot numbers, and corresponding PSI levels for each vehicle. After which  I created two summary tables (total summary and group total summary)  to look at the mean, median, variance, and standard deviation of data. The first table looked at of the data as a whole, while the second table looked specific at each of the three different lots that the MechaCars were divided into. Here are the two tables.

### Total Summary

<img width="485" alt="Screen Shot 2021-06-21 at 12 20 19 PM" src="https://user-images.githubusercontent.com/78401776/122795219-17695c00-d28b-11eb-8a1d-98a5712efbc9.png">


### Lot Summary

<img width="622" alt="Screen Shot 2021-06-21 at 12 22 28 PM" src="https://user-images.githubusercontent.com/78401776/122795454-57c8da00-d28b-11eb-9097-2b2df378c8c5.png">


1) Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
For the total summary, the current variance is 62.29356 PSI which means that it meets the design specification. With the lots indidviudals, the first two lots meet the design specification at a varience of 0.97 and 7.46 PSI respectively. The third lot does not. it has a 170.28 PSI variance which exceeds the design specification. It is adviseable that the manufacturing companies work with cars in Lots 1 and 2. 


## T-Tests on Suspension Coils

The purpose of this section was to determine if all manufactuing lots and each individual lot are statistically different from the popoulation mean of 1500 pounds per square inch. To achieve this, I calculated four different p-values using the R's  t.test(). The purpose for these test were to find out if any of the four groups have a statistically different mean from the population mean of 1500 PSI?

With a significance level of 95% (the results would be true 95% of the time), I test the four groups. From the results, all p-values were not greater than 0.05. This means that, I would not fail to reject that there is a statistical difference between the four groups and the population mean.

### Results from the four test:

                  One Sample t-test

          data:  suspension_coil_table$PSI
          t = -1.8931, df = 149, p-value = 0.06028
          alternative hypothesis: true mean is not equal to 1500
          95 percent confidence interval:
           1497.507 1500.053
          sample estimates:
          mean of x 
            1498.78 

 ### Lot Test 1  
                       One Sample t-test

            data:  pop1$PSI
            t = 0, df = 49, p-value = 1
            alternative hypothesis: true mean is not equal to 1500
            95 percent confidence interval:
             1499.719 1500.281
            sample estimates:
            mean of x 
                 1500 


 ### Lot Test 2
 
                     One Sample t-test

            data:  pop2$PSI
            t = 0.51745, df = 49, p-value = 0.6072
            alternative hypothesis: true mean is not equal to 1500
            95 percent confidence interval:
             1499.423 1500.977
            sample estimates:
            mean of x 
               1500.2 



 ### Lot Test 3
                     One Sample t-test

            data:  pop3$PSI
            t = -2.0916, df = 49, p-value = 0.04168
            alternative hypothesis: true mean is not equal to 1500
            95 percent confidence interval:
             1492.431 1499.849
            sample estimates:
            mean of x 
              1496.14 


## Study Design: MechaCar vs Competition

The purpose for this section was to compare the performance of MechaCar anf it's competition. 

1) What metric or metrics are you going to test?
### I would test both the city and highway fuel efficiencies. 

2) What is the null hypothesis or alternative hypothesis?
### The null hypothesis would be all cars in the same class would have the same fuel efficiencies whilst the althernative would be the opposite which is they are all not the same. 

3) What statistical test would you use to test the hypothesis? And why?
### The ANOVA test would be the preferable statistical test the hypothesis. In addition, the ggplot2 library  specifically a boxplot would be useful in highlighting how the  
different cars are spread out. 

4) What data is needed to run the statistical test?
### Data ffrom 50 fuel efficiency individual cars would create a sample size of data for each car in the class type.





