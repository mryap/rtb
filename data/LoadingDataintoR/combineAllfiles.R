# convert 29 csv files into one data.frame
# and output data.frame to a single csv files

getwd()

# Get the files names
files = list.files(pattern="*.csv")

# First apply read.csv, then rbind
myfiles = do.call(rbind, lapply(files, function(x) read.csv(x, stringsAsFactors = FALSE)))

write.csv(myfiles, file = "MyData.csv")