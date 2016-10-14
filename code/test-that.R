#Script to be called from command line to perform unit tests:
  # Rscript test-that.R
  #install.library("testthat")
  
library(testthat)
test_file('code/tests/test-regression.R')

