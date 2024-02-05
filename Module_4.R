library(tidyverse)
library(dplyr)
library(ggplot2)

Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

length(Frequency)
length(BP)
length(First)
length(Second)
length(FinalDecision)

BP_Assessments <- data.frame(Frequency,BP,First,Second,FinalDecision)

boxplot(BP ~ Frequency, data = BP_Assessments, main = "Frequency of Hospital Visits
        correlated to Blood Pressure", xlab = "Frequency of Hospital Visits", ylab = "
        Blood pressure")

BP_Assessments_New <- BP_Assessments %>%
  mutate(First = ifelse(is.na(First), 0, First)) %>%
  select(Frequency, BP, First, Second, FinalDecision) %>%
  mutate(Sum_Of_Decisions = First + Second + FinalDecision)

hist(BP_Assessments_New$Sum_Of_Decisions, breaks = seq(0,3, by = 1))






