#STAT 159 - fall-2016 Homework 3



This is the repository for Homework 3. In this assignment, I attempted to reproduce multiple regression analysis. More specifically, the idea is to reproduce the analysis from Section 3.2 (page 71 to 82), of Chapter 3:*Linear Regression*, from the book "An introduction to Statistical Learning" (by James et at) at http://www-bcf.usc.edu/~gareth/ISL/.

 I also produce historgrams and scatter plots on each independent variables, as well as the multiple regression plots and correlation matrix. 

This assignment is the continuation of W2, where we run our simple regression analysis. More functions and their unit tests will be created throughout this homework. 

The structure of this homework is as followed. 

```
stat159-fall2016-hw03/
	.gitignore
	README.md
	LICENSE
	Makefile
	session-info.txt                     # produced by session-info-script.R
	code/
	  README.md
	  test-that.R
	  functions/
	    regression-functions.R
	  scripts/
	    eda-script.R
	    regression-script.R
	    session-info-script.R
	  tests/
	    test-regression.R
	data/
	  README.md
	  Advertising.csv
	  eda-output.txt                      # produced by eda-script.R
	  correlation-matrix.RData            # produced by eda-script.R
	  regression.RData                    # produced by regression-script.R
	images/
		histogram-sales.png                # produced by eda-script.R
		histogram-tv.png                   # produced by eda-script.R
		histogram-radio.png                # produced by eda-script.R
		histogram-newspaper.png            # produced by eda-script.R
		scatterplot-matrix.png             # produced by eda-script.R
		scatterplot-tv-sales.png           # produced by regression-script.R
		scatterplot-radio-sales.png        # produced by regression-script.R
		scatterplot-newspaper-sales.png    # produced by regression-script.R
		residual-plot.png                  # produced by regression-script.R
		scale-location-plot.png            # produced by regression-script.R
		normal-qq-plot.png                 # produced by regression-script.R
	report/
		report.Rmd
		report.pdf
```


Author: Gary Thuc Nguyen

### Creative common : 

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

All source code (i.e. code in R script files) is licensed under GNU General Public License, version 3. See the LICENSE file for more information



