advertising_url = "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

.PHONY: all data clean

all: report.pdf eda-output.txt regression.RData
	
report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	pandoc report/report.Rmd -s -o report/report.pdf

eda-output.txt: code/eda-script.R data/Advertising.csv
	Rscript code/eda-script.R data/Advertising.csv

regression.RData: code/regression-script.R data/Advertising.csv 
	Rscript code/regression-script.R data/Advertising.csv

data: 
	curl -o data/Advertising.csv $(advertising_url) 

clean: 
	cd report; rm -f report.pdf