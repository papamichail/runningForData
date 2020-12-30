# runningForData
Course Project for "Getting and Cleaning Data" Week 4


This repository is a submission for the Week 4 Project of the Course "Getting and Cleaning Data". It contains a dataset (UCI HAR Dataset) and the script in R to tidy up this dataset.

Dataset
The dataset is named "Human Activity Recognition Using Smartphones Data Set" and is described in detail in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

Repository Contents

run_analysis.R
Contains the script for the data analysis which materialises the following five steps:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

myDataset.zip
Contains the input dataset in zip format

UCI HAR Dataset
Contains the input dataset in unzipped format

Summary_myData.txt
Contains the input dataset after running the run_analysis.R Script

CodeBook.md 
Contains a code book describing the data, the variables and all the transformations and tidying activities that were performed on the data.

