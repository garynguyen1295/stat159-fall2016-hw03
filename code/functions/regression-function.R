#Residual Sum of Squares. Write a function residual_sum_squares() to calculate the
#RSS (residual sum of squares). This function should take the "lm" object as input, and the
#output is the RSS. See the formula of eq. 3.16 (page 69).

# Residual Sum of Squares
# Function computes Residual Sum of Squares 
# Expected in put is an 'lm object', denoted by x
# Return output is RSS of the 'lm object'

Residual_ss <- function(x) {
  RSS = sum((x$residuals)^2)
}

# Total Sum of Squares. Return output is TSS 
# The function is used to compute total sum of squares
Total_ss <- function(w){
  
  y = w$model[[1]]
  sum((y-mean(y))^2)
}


#Expect input is lm object, return output is R-squared value
#Compute R-squared (p.70)
## R-squared value
R_squared = function(w){
  1-Residual_ss(w)/Total_ss(w)
}

#Expect input is lm object, return output is F-statistics 
#Compute f-statistics (p.75)
## F-statistics

F_statistic = function(w){
  p = w$rank - 1
  y = w$model[[1]]
  n = length(y)
  (Total_ss(w) - Residual_ss(w))/p/(Residual_ss(w)/(n-p-1))
}

#Expect input is lm object, return output is RSE
#Compute residual standard error (p.80)
## Residual Standard Error
residual_std_error = function(w){
  p = w$rank - 1
  y = w$model[[1]]
  n = length(y)
  sqrt(Residual_ss(w)/(n-p-1))
}


