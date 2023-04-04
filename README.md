# GSOC-2023-R
---
title: "GSoC 2023"
author: "Simran Chaudhary"
date: "2023-04-04"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
install.packages("VedicDateTime",repos = "http://cran.us.r-project.org")
library(VedicDateTime)
```
#### Organisation: The R Project for Statistical Computing

#### Project: Enhancing the Functionality and Accuracy of the VedicDateTime R Package


#### Easy Test

library(VedicDateTime)

dates <- seq(as.Date("2023-01-01"), as.Date("2023-12-31"), by="day")

#To get tithi for New Delhi on 4th April,2023
jd <- 2459348 #Julian day number for 4th April,2023
place <- c(28.70, 77.10, +5.5) #Latitude, Longitude and timezone of New Delhi,India
tithi(jd, place)
get_tithi_name(jd, place)

#### [1] 12 42 24 45
#### [2] "Shukla paksha dvadashi till 42:24:45"

day1 <- gregorian_to_jd(1,1,2023)
day2 <- gregorian_to_jd(1,1,2024)
days <- seq(day1,day2)
#### Sunrise for 2023 in New Delhi
sunrise <- sapply(X=days, FUN=sunrise, place = c(28.70, 77.10, +5.5))
plot(days,sunrise[2,])
#### Lagna numbers for 2023
lagna <- sapply(X=days, FUN=lagna)
plot(days,lagna)
