#**********************************************************************************************
# 1. SET WORKING DIRECTORY AND LOAD PACKAGES

## Set the working directory for the tutorial file
setwd("C:/Users/yw/Documents/GitHub/gini-coef-factors-study")

## Load stargarzer package for summary statistics and regression tables
library(stargazer)

## Load Applied Econometrics Package for testing and heteroskedasticity robust standard errors
library(AER)

## Load ggplot2 Package for graphing
library(ggplot2)

#**********************************************************************************************
# 2. LOAD DATA

## Load dataset on income and height
dat=read.csv(file="data.csv")

## List the variables in the dataset named mydata1
names(dat)

## Dimension of the dataset
# Check dataset dimension       
dim(dat)