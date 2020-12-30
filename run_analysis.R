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

# 1. Merging the training and the test sets to create one data set.

XTRAIN <- rbind(x_train, x_test)
YTRAIN <- rbind(y_train, y_test)
Subjects <- rbind(subject_train, subject_test)
Merged_Set <- cbind(Subjects, YTRAIN, XTRAIN)

# 2. Extracting only the measurements on the mean and standard deviation for each measurement. 

myData <- Merged_Set %>% 
            select(subject, code, contains("mean"), contains("std"))


# 3. Use descriptive activity names to name the activities in the data set

myData <- myData %>% 
               mutate(code = activities[code,2])


# 4. Appropriately labels the data set with descriptive variable names. 

names(myData)[1] = "Subject"
names(myData)[2] = "Activity"
names(myData)<-gsub("Acc", "Accelerometer", names(myData))
names(myData)<-gsub("Gyro", "Gyroscope", names(myData))
names(myData)<-gsub("BodyBody", "Body", names(myData))
names(myData)<-gsub("Mag", "Magnitude", names(myData))
names(myData)<-gsub("freq", "Frequency", names(myData), ignore.case = TRUE)
names(myData)<-gsub("^t", "Time", names(myData))
names(myData)<-gsub("^f", "Frequency", names(myData))
names(myData)<-gsub("tBody", "TimeBody", names(myData))
names(myData)<-gsub("mean", "Mean", names(myData), ignore.case = TRUE)
names(myData)<-gsub("std", "STD", names(myData), ignore.case = TRUE)
names(myData)<-gsub("angle", "Angle", names(myData))
names(myData)<-gsub("gravity", "Gravity", names(myData))

# 5. From the data set in step 4, create a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

Summary_myData <- myData %>% 
                  group_by(Subject, Activity) %>% 
                  summarise_all(mean)

write.table(Summary_myData, "Summary_myData.txt", row.name = FALSE)
