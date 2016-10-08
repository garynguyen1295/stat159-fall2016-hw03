.PHONY: all data clean

all: report.pdf eda-output.txt regression.RData



	 
	
report.pdf: report.Rmd
	cd report; pandoc -f markdown -t pdf -s paper.md -o paper.html

eda-output.txt: eda-script.R Advertising.csv
	cd data;  Rscript eda-script.R

regression.RData: regression-script.R Advertising.csv
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd .. 


clean: 
	cd report; rm -f report.pdf