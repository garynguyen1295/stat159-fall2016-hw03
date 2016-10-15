Contained in the 'code' folder are `test-that.R` file and 3 folders:  `functions/`, `scripts/` and `tests/`

Below are the descriptions of each component in the folder:

### `test-that.R`
_ The Rscript will call `test-regression.R` in order to run the unit tests for the `regression-functions.R`.


### Folder  `functions/`
 
_ It contains the regression functions R script for each statistic used for assessment in the multiple linear regression model

There are 5 functions we need to generate:
	- Residual Sum of Squares
	- Total Sum of Squares
	- R-squared
	- F-statistic
	- Residual Standard Error

### Folder `scripts/`: 

this folder has 3 R files:

	* `eda-scrippt.R`:

	_ It reads 'Advertising.csv' data set. Then it will compute summary statistics, histograms for the 4 variables (`TV`, `Radio`, `Newspaper`, and `Sales`). A matrix of correlation and a scatterplot-matrix will also be produced 

	* `regression-script.R`: 

	_ Reads in the `Advertising.csv` data set, and computes a `"regression"` object---via `lm()`---as well as the summary of such regression object---via `summary()`. 

	_ The objects are then saved in the file `regression.RData`. 

	_ This script also produces the 3 plots `residual-plot.png`, `scale-location-plot.png`, and `normal-qq-plot.png`.  
	
	* `session-info-script.R`: 

	This is a script that includes `library()` calls to ALL the packages that you use for your project, as well as the output of the function `sessionInfo()`. Output will be extracted via `sink()` to the file `session-info.txt`
	

### Folder `tests/`: 

contains the test-regression.R script that tests if the regression functions are working properly
