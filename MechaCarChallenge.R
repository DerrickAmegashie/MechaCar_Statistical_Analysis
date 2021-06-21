library(dplyr)

mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,mechacar_table)

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle +  ground_clearance + AWD, data = mechacar_table))

suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_coil_table %>% summarise(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep') #create summary table with multiple columns

group_total_summary <- suspension_coil_table %>%  group_by(Manufacturing_Lot) %>% summarise(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep') #create summary table with multiple columns

t.test(x=suspension_coil_table$PSI,mu=1500)

pop1 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot1') # Create subset for lot 1 cars
t.test(x=pop1$PSI, mu=1500) # t test on lot 1 cars' PSI with a mean of 1500
pop2 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot2') # Create subset for lot 2 cars
t.test(x=pop2$PSI, mu=1500) # t test on lot 2 cars' PSI with a mean of 1500
pop3 <- subset(suspension_coil_table, Manufacturing_Lot=='Lot3') # Create subset for lot 3 cars
t.test(x=pop3$PSI, mu=1500) # t test on lot 3 cars' PSI with a mean of 1500