library(dplyr)

filename <- "myDataset.zip"

# Checking if the file already exists online.
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename)
}  

# Checking if folder exists - if it does not exist it is created
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}


# Data Frame Creation

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
