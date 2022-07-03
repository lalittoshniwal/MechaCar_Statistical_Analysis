
library(dplyr) # import libraries



MechaCar <- read.csv(file="MechaCar_mpg.csv") # read in csv



lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar) #generate multiple linear regression model



summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar)) #generate summary statistics



Suspension_coil <- read.csv(file="Suspension_Coil.csv") # read in csv



summarize_df <- Suspension_coil %>% summarize(Mean=mean(PSI), Median= median(PSI), Var= var(PSI), Std = sd(PSI))



summarize_df_lot <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median= median(PSI), Var= var(PSI), Std = sd(PSI))



t.test(Suspension_coil$PSI, mu=1500) #compare sample to population means



Lot1 <- subset.data.frame(Suspension_coil, Manufacturing_Lot = "Lot1")
t.test(Lot1$PSI, mu=1500) #compare sample to population means



Lot2 <- subset.data.frame(Suspension_coil, Manufacturing_Lot = "Lot2")
t.test(Lot2$PSI, mu=1500) #compare sample to population means



Lot3 <- subset.data.frame(Suspension_coil, Manufacturing_Lot = "Lot3")
t.test(Lot3$PSI, mu=1500) #compare sample to population means

