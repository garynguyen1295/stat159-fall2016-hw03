
eads in the Advertising.csv data set, and computes a
"regression" object-via lm() -as well as the summary of such regression object-
via summary() . This script also produces the scatterplot with the regression line.
The R objects from the regression analysis are saved in the file regression.RData.
In turn, the scatterplot is saved in both PNG and PDF formats.


Advertising_data <- read.csv("Advertising.csv", header = TRUE)


# create the scatterplot-tv-sales.png

png(file = "/Users/Thuc/Dropbox/UC_Berkley/FALL_2016/STAT_159/homework_2/stat159-fall2016-hw02/images/scatterplot-tv-sales.png")



plot()




plot( dose, drugA, type=" b" ,
      pch=15, lty=1, col=" red" , ylim=c( 0, 60) ,
      main=" Scatter plot of " ,
      xlab=" Drug Dosage" , ylab=" Drug Response" )
lines( dose, drugB, type=" b" ,
       pch=17, lty=2, col=" blue" )
abline( h=c( 30) , lwd=1. 5, lty=2, col=" gray" )

## Use save() function to produce 
save()

reg = lm(eda$Sales~eda$TV)
save(reg, file = "/Users/MandyZhang/Desktop/stat_159/hw02/data/regression.RData")