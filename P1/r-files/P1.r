# Written by Blake Conrad
# On data set found at: https://analytics.usa.gov/defense/data/
# Project 1.

# Read in data from .cvs file into a dataframe object.
df = read.csv("/Users/bmc/Desktop/STAT-35000/R_Project_1/data-files/Proj1_all-domains-30-days.csv",
               header = TRUE,
               quote="\"",
               stringsAsFactors= TRUE,
               strip.white = TRUE)

df
# Test plots
plot(df)
head(df)

library(lattice)
plot(df$pageviews_per_session, df$avg_session_duration,
     pch = 16, 
     cex = 1.3, 
     col = "blue", 
     main = "TIME ON SITE AGAINST PAGES VIEWED",
     xlab = "PAGED VIEWED", 
     ylab = "TIME ON SITE (sec)")

box(df$avg_session_duration)
box(df$pageviews_per_session)
# Boxplot of MPG by Car Cylinders 
boxplot(df$pageviews_per_session,data=df,
        main="PAGE VIEWS PER SESSION BOX PLOT",
        ylab="PAGE VIEWS")
boxplot(df$avg_session_duration,data=df,
        main="AVG SESSION DURATION BOX PLOT",
        ylab="SESSION DURATION (sec)")
sd(df$domain)
sd(df$visits)
sd(df$pageviews)
sd(df$users)
sd(df$pageviews_per_session)
sd(df$avg_session_duration)
sd(df$exits)

var(df$domain)
var(df$visits)
var(df$pageviews)
var(df$users)
var(df$pageviews_per_session)
var(df$avg_session_duration)
var(df$exits)

cor(df$pageviews_per_session, df$avg_session_duration)
fit = lm(df$avg_session_duration ~ df$pageviews_per_session)
abline(fit,
       pch="16",
       cex= 1.3,
       col = "red")

summary(lm(df$avg_session_duration ~ df$pageviews_per_session))

summary(df)
summary(df$pageviews_per_session)
summary(df$avg_session_duration)
# should be able to:
  #write introduction
  #talk about the data: get the data from R and convert it to excel then snap shot and insert into the document I am writing up. , variables, are they categorical, quantitative, discrete, continuous, ect...
  #table of visuals: 5 number summary, stddev, mean, median, mode, descriptive statistcs...