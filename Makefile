.PHONY: all data clean tests eda regression report

all: eda regression report

data: 
	cd data; curl --remote-name http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; cd ..


clean: 
	cd report; rm -f report.pdf

tests:
        cd code/ && Rscript "test-that.R"

eda:
	Rscript code/eda-script.R data/Advertising.csv

regression:
	Rscript code/regression-script.R data/Advertising.csv

report: report/report.rmd data/regression.RData report/
	R -e 'library("rmarkdown");library("xtable");rmarkdown::render("report/report.Rmd")'





