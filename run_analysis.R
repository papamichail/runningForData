library(dplyr)

filename <- "myDataset.zip"

# Checking if the file already exists online.
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename)
}  

<<<<<<< HEAD
# Checking if folder exists - if it does not exist it is created
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}


# Data Frame Creation

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
=======
# Checking if folder exists
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}
>>>>>>> a51baa088a1798e66e442add0924d104cda8b489
