ona_data <- read.csv("Ona_Data_ALL.csv")

library(lme4); library(dplyr)

# First step is to clean things up 
ona_data <- ona_data[,-c(1,2)]
ona_data2 <- ona_data %>% mutate(Freq=as.factor(Freq), Resid = as.factor(Resid), Cults = as.factor(Cults),
                                Plots = as.factor(Plots))


m1 <- lmer(rootmass ~ Resid*Freq + (1|Plots),ona_data)
summary(m1)
