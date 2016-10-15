
#Reads in the Advertising.csv data set, and computes a
#"regression" object-via lm() -as well as the summary of such regression object-
#via summary() . This script also produces the scatterplot with the regression line.
#The R objects from the regression analysis are saved in the file regression.RData.
#In turn, the scatterplot is saved in both PNG and PDF formats.


## 
Advertising_data <- read.csv('../../data/Advertising.csv', header = TRUE)
Advertising_data = Advertising_data[,-1]

reg_TV= lm(Advertising_data$Sales ~ Advertising_data$TV)
reg_Radio = lm(Advertising_data$Sales ~ Advertising_data$Radio)
reg_Newspaper = lm(Advertising_data$Sales~Advertising_data$Newspaper)
reg_multi = lm(Sales~TV + Radio + Newspaper, data = Advertising_data)


#Using save function to create regression.RData 
save(reg_TV,reg_Radio,reg_Newspaper,reg_multi, file = '../../data/regression.RData')


# create the scatterplot-tv-sales.png
png(file = "../../images/scatterplot-tv-sales.png",width=8,height=6,units="in",res=100)

plot(Advertising_data$TV, Advertising_data$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "TV", main = "Regression of Sales onto TV")

abline(lm(Advertising_data$Sales ~ Advertising_data$TV), lwd = 2)

dev.off()


# create the scatterplot-Radio-sales.png
png(file = "../../images/scatterplot-radio-sales.png")

plot(Advertising_data$Radio, Advertising_data$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "Radio", cex = 1.2, main = "Radio vs. Sales")

abline(lm(Advertising_data$Sales~Advertising_data$Radio), col = "dark blue", lwd = 2)

dev.off()

# create the scatterplot-Newspaper-sales.png
png(file = "../../images/scatterplot-newspaper-sales.png")

plot(Advertising_data$Newspaper, Advertising_data$Sales, pch = 20, col = "deeppink3", ylab = "Sales", xlab = "Newspaper", cex = 1.2, main = "Newspapers vs. Sales")
abline(lm(Advertising_data$Sales~Advertising_data$Newspaper), col = "dark blue", lwd = 2)
dev.off()

# create residual-plot.png
png(file = "../../images/residual-plot.png")
plot(reg_multi, 1)
dev.off()

# create normal-qq-plot.png
png(file = "../../images/normal-qq-plot.png")
plot(reg_multi, 2)
dev.off()

# create scale-location-plot.png
png(file = "../../images/scale-location-plot.png")
plot(reg_multi, 3)
dev.off()










