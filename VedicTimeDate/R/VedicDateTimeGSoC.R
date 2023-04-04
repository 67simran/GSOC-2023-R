# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

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

