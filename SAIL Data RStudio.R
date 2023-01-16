installed.packages()
library(rio)
library(tidyverse)
library(ggpubr)
library(rstatix)
library(datarium)
data <- NA
data <- import("Pure SAIL Data Set.xlsx")
view(data)
df <- NA
df <- data.frame(data)
view(df)
home <- NA
home <- subset(df, df$Location == 1)
view(home)
away <- NA
away <- subset(df, df$Location == 0)
view(away)
sum(away$Made)
away_percent <- NA
away_percent <- sum(away$Made) / sum(away$Attempted) * 100
home_percent <- NA
home_percent <- sum(home$Made) / sum(home$Attempted) * 100
t.test(away$Percentage, home$Percentage)
compare <- NA
compare <- t_test(away_percent, home_percent)
away$Average <- sum(away$Made) / sum(away$Attempted) * 100
home$Average <- sum(home$Made) / sum(home$Attempted) * 100
t.test(away$Average, home$Average)
cohens_d(away$Average ~ home$Average)
?t.test
percentages <- NA
percentages <- data.frame(away_percent, home_percent)
view(percentages)
t.test(percentages$away_percentage, percentages$home_percent)
t.test(home$Average, away$Average, alternative = "two.sided", var.equal = FALSE)
