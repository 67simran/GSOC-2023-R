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


### Easy Test

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
![image](https://user-images.githubusercontent.com/101885248/229801160-0ec26de4-2547-4627-bf7e-300ec93cb226.png)

### Medium Test
Some possible updates or new features that could be added to the VedicDateTime package:

   1. Support for additional Vedic calendars: The current version of the VedicDateTime package only supports the Hindu lunar calendar. Adding support for other Vedic calendars, such as the Solar Hijri calendar or the Javanese calendar, would increase the versatility and usefulness of the package.

   2.  Time zone conversion: Currently, the package assumes that all dates and times are in the same time zone. Adding functionality for time zone conversion would allow users to work with dates and times across different time zones.

   3.  Integration with other packages: The VedicDateTime package could be integrated with other packages that work with time-series data, such as the xts or zoo packages. This would allow users to easily convert between Western and Vedic dates in the context of time-series analysis.

   4. Support for Vedic astrology: Vedic astrology is an important application of Vedic time-keeping. Adding functionality to the package for working with Vedic astrology, such as computing planetary positions or generating birth charts, would be a valuable addition for users interested in this field.

   5. More robust error handling: As with any software package, errors can occur when working with the VedicDateTime package. Improving the error handling and providing more informative error messages would make it easier for users to troubleshoot issues and ensure the accuracy of their results.

### Hard Test

#' fiftyth power a number
#'
#' Takes in any numeric value and fiftyth power it.
#' @param x A numeric value to be fiftyth power
#' @export
#' @return the fiftyth power of input
fiftyth_power<-function(x){
  return(x^50)
}

#' hundredth power a number
#'
#' Takes in any numeric value and hundredth power it.
#' @param x A numeric value to be hundredth power
#' @export
#' @return the hundredth power of input
hundredth_power<-function(x){
  return(x^100)
}

#' Square a number
#'
#' Takes in any numeric value and square it.
#' Simran Chaudhary
#' @param x A numeric value to be squared
#' @export
#' @return the square of input
square<- function(x){
  return(x^2)
}

#' cube a number
#'
#' Takes in any numeric value and cube it.
#' @param x A numeric value to be cubed
#' @export
#' @return the cube of input
cube<- function(x){
  return(x^3)
}

#' biquadrates a number
#'
#' Takes in any numeric value and biquadrates it.
#' @param x A numeric value to be biquadrates
#' @export
#' @return the biquadrates of input
biquadrates<- function(x){
  return(x^4)
}


