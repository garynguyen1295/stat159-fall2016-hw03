.PHONY: all data clean

all: report.pdf eda-output.txt regression.RData

sgfsdfddsfsdf

	 
	
report.pdf: report.Rmd
	cd report; pandoc -f markdown -t pdf -s report.md -o report.pdf


eda-output.txt: eda-script.R Advertising.csv
	cd data;  Rscript eda-script.R

regression.RData: code/regression-script.R data/Advertising.csv 
	Rscript code/regression-script.R data/Advertising.csv


clean: 
	cd report; rm -f report.pdf


