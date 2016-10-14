## get file source and load testthat package in R
source("../functions/regression-functions.R")
#setwd("~/Documents/stat159/hw3/code")
#test_file("./tests/test-regression.R")
library(testthat)

#test the Residual_ss function
context("Test for regression functions")

test_that("RSS works as expected", {
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  reg_sum <- summary(reg)
  expect_equal(Residual_ss(reg), sum(reg$residuals^2)) 
  expect_gte(Residual_ss(reg), 0)
  expect_length(Residual_ss(reg),1)
  expect_type(Residual_ss(reg),'double')
})

#test the total_sum__of_squares function
context("Test for Total_ss function")
test_that("TSS works as expected", {
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  reg_sum <- summary(reg)
  expect_equal(Total_ss(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_length(Total_ss(reg),1)
  expect_type(Total_ss(reg),'double')
  
})

#test the r_square function
context("Test for R_squared function")
test_that ("R_squared works as expected", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  reg_sum = summary(reg)
  expect_gte(R_squared(reg),0)
  expect_equal(R_squared(reg),reg_sum$r.squared)
  expect_length(R_squared(reg),1)
  expect_type(R_squared(reg),'double')
})

#test the F-statistic function
context("Test for F_statistic function")
test_that ("F_statistic as expected", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  reg_sum = summary(reg)
  expect_equal(F_statistic(reg), reg_sum$fstatistic[[1]])
  expect_type(F_statistic(reg),'double')
})

#test the residual_std_error function
context("Test for residual_std_error function")
test_that ("RSE as expected", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  reg_sum = summary(reg)
  expect_gte(residual_std_error(reg),0)
  expect_equal(residual_std_error(reg), reg_sum$sigma)
  expect_length(residual_std_error(reg),1)
  expect_type(residual_std_error(reg),'double')
})