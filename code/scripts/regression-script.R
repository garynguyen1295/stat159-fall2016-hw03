
Reads in the Advertising.csv data set, and computes a
"regression" object-via lm() -as well as the summary of such regression object-
via summary() . This script also produces the scatterplot with the regression line.
The R objects from the regression analysis are saved in the file regression.RData.
In turn, the scatterplot is saved in both PNG and PDF formats.


Advertising_data <- read.csv("Advertising.csv", header = TRUE)
reg= lm(Advertising_data$Sales ~ Advertising_data$TV, data = Advertising_data)

#Using save function 
save(reg, file = 'data/regression.RData')
summary(reg)


# create the scatterplot-tv-sales.png

png(file = "images/scatterplot-tv-sales.png", height= 4.5, width = 7)

plot(Advertising_data$TV, Advertising_data$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "TV")
title(main = 'Advertising Scatterplot of  Sales vs. TV')
abline(lm.fit, lwd = 2)
dev.off()


# create the scatterplot-tv-sales.pdf

pdf(file = "images/scatterplot-tv-sales.pdf")
plot(Advertising_data$TV, Advertising_data$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "TV")
title(main = 'Advertising Scatterplot: Sales vs. TV')
abline(lm.fit, lwd = 2)
dev.off()

