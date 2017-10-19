# import .px files into R 
# Allows for export as clean .csv files


install.packages("pxR")

# load library
library(pxR)

# Average Monthly Rent Report (Euro) by Location, Year, Property Type and Number of Bedrooms 
my.px.object <- read.px("http://www.cso.ie/px/pxeirestat/pssn/prtb/homepagefiles/RIA02.px")
my.px.data   <-  as.data.frame( my.px.object )

# Average Monthly Rent Report (Euro) by Location, Quarter, Property Type and Number of Bedrooms 
my.px.object.qtr <- read.px("http://www.cso.ie/px/pxeirestat/pssn/prtb/homepagefiles/RIQ02.px")
my.px.data.qtr   <-  as.data.frame(my.px.object.qtr)


# https://stat.ethz.ch/R-manual/R-devel/library/utils/html/write.table.html
write.table(my.px.data, file = "", append = FALSE, quote = TRUE, sep = " ",
            eol = "\n", na = "NA", dec = ".", row.names = TRUE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")

write.table(my.px.data.qtr, file = "", append = FALSE, quote = TRUE, sep = " ",
            eol = "\n", na = "NA", dec = ".", row.names = TRUE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")

# convert to csv file
write.csv(my.px.data, file = "rtb.csv")

write.csv(my.px.data.qtr, file = "rtb_qtr.csv")

# Select Dublin only
#new_dataframe<- subset(my.px.data.qtr,Location=="Dublin")
#head(new_dataframe)
#tail(new_dataframe)

