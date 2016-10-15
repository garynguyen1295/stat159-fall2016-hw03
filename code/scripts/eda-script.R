#eda-script.R reads in the Advertising.csv data set, and computes summary
#statistics and histograms of TV and Sales. The summary statistics should be
#clearly labeled, and will be saved in a file eda-output.txt. The charts are saved
#in PNG format

Advertising_data <- read.csv('../../data/Advertising.csv', header = TRUE)
Advertising_data = Advertising_data[,-1]
# summary statistics of TV,  Histogram of TV
summary_TV <- summary(Advertising_data$TV)


historgram_TV <-  hist(Advertising_data$TV)


# summary stats of sales, historgram of sales
summary_Sales <- summary(Advertising_data$Sales)
histogram_Sales <- hist(Advertising_data$Sales)

# summary stats of Radio, historgram of Radio
summary_Radio <- summary(Advertising_data$Radio)
histogram_Radio <- hist(Advertising_data$Radio)

# summary stats of newspaper, historgram of Newspaper
summary_Newspaper <- summary(Advertising_data$Newspaper)
histogram_Newspaper <- hist(Advertising_data$Newspaper)


# Saving summary statistics of TV and Sales into the text file



#Saving the charts into  Png format 

## histogram-sales.png
png(file = "../../images/histogram-sales.png")
hist(Advertising_data$Sales, main = "Histogram of Sales")
dev.off()


##histogram-tv.png
png(file = "../../images/histogram-tv.png")
hist(Advertising_data$TV, main = "Histogram of TV")
dev.off()


##histogram-radio.png
pdf(file = "../../images/histogram-radio.png")
hist(Advertising_data$Radio, main = "Histogram of radio")
dev.off()


##histogram-newspaper.png
pdf(file = "../../images/histogram-Newspaper.png")
hist(Advertising_data$Newspaper, main = "Histogram of Newspaper")
dev.off()

#Generate pair-wise scatterplots, disected by 4 objects (TV, Radio, Newspaper, Sales)

png(file = "../../images/scatterplot-matrix.png")
pairs(Advertising_data)
dev.off()

##Using sink
sink(file = "../../data/eda-output.txt")
cat("TV summary statistics\n\n")
summary_TV
cat("Radio summary statistics\n\n")
summary_Radio
cat("Newspaper summary statistics\n\n")
summary_Newspaper
cat("Sales summary statistics\n\n")
summary_Sales
cat("matrix of correltations among all variables")
round(cor(Advertising_data),3)
sink()

corm_Advertising = cor(Advertising_data)
save(corm_Advertising, file = "../../data/correlation-matrix.RData")
