# 01/08/2016
# Yap Shiao Shyan
# http://dss.princeton.edu/training/Merge101R.pdf

#use the read.csv function to read the data from a CSV file
#into a data frame
#df1 <- read.csv(file.choose(), sep = ",", header=TRUE, stringsAsFactors = FALSE)
#df2 <- read.csv(file.choose(), sep = ",", header=TRUE, stringsAsFactors = FALSE)

setwd("C:/Users/mryapss/Dropbox/!Project")

rtb <- read.csv("cleaned_rtb.csv")
drl <- read.csv("drl_cpi_prr_vr_stock_0.csv")

mydata <- merge(rtb, drl, by=c("Year","Location", "Rent"), all=TRUE)

head(mydata)

write.csv(mydata, file = "rtb_drl.csv")

getwd()

# taking care of missing values, merging data frames, handling outliers.

library(reshape)
cast()
