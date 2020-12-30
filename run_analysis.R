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

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("index","functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("index2", "activity"))

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

# Analysis Steps

# Mergin the training and the test sets to create one data set.

XTRAIN <- rbind(x_train, x_test)
YTRAIN <- rbind(y_train, y_test)
Subjects <- rbind(subject_train, subject_test)
Merged_Set <- cbind(Subjects, YTRAIN, XTRAIN)









