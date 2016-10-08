eda-script.R reads in the Advertising.csv data set, and computes summary
statistics and histograms of TV and Sales. The summary statistics should be
clearly labeled, and will be saved in a file eda-output.txt. The charts are saved
in both PNG and PDF format

Advertising_data <- read.csv("Advertising.csv", header = TRUE)

# summary statistics of TV,  Histogram of TV
summary_TV <- summary(Advertising_data$TV)
summary_TV

historgram_TV <-  hist(Advertising_data$TV)


# summary stats of sales, historgram of sales
summary_Sales <- summary(Advertising_data$Sales)
histogram_Sales <- hist(Advertising_data$Sales)

# Saving summary statistics of TV and Sales into the text file
sink(file = "/Users/Thuc/Dropbox/UC_Berkley/FALL_2016/STAT_159/homework_2/stat159-fall2016-hw02/data/eda-output.txt")
cat("summary statistics for TV\n\n")
summary_TV
cat("summary statistcis for Sales\n\n")
summary_Sales
sink()


#Saving the charts into PDF and Png format 

## histogram-sales.png
png(file = "/Users/Thuc/Dropbox/UC_Berkley/FALL_2016/STAT_159/homework_2/stat159-fall2016-hw02/images/histogram-sales.png")
hist(Advertising_data$Sales, main = "Histogram of Sales")
dev.off()

## histogram-sales.pdf
pdf(file = "/Users/Thuc/Dropbox/UC_Berkley/FALL_2016/STAT_159/homework_2/stat159-fall2016-hw02/images/histogram-sales.pdf")
hist(Advertising_data$Sales, main = "Histogram of Sales")
dev.off()

##histogram-tv.png
png(file = "/Users/Thuc/Dropbox/UC_Berkley/FALL_2016/STAT_159/homework_2/stat159-fall2016-hw02/images/histogram-tv.png")
hist(Advertising_data$TV, main = "Histogram of TV")
dev.off()

##histogram-tv.pdf
pdf(file = "/Users/Thuc/Dropbox/UC_Berkley/FALL_2016/STAT_159/homework_2/stat159-fall2016-hw02/images/histogram-tv.pdf")
hist(Advertising_data$TV, main = "Histogram of TV")
dev.off()



