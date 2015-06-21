# Getting and Cleaning Data

## Course Project

You should create one R script called run_analysis.R that does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps to Execute the Project

1. Download the data source and unzip the file into a folder on your local drive. You should have a "UCI HAR Dataset" folder.
2. Put "run_analysis.R" in the parent folder of "UCI HAR Dataset". Set the parent folder as your working directory using ``setwd()`` command.
3. Run ``source("run_analysis.R")``. It will create a new file "tidy.txt" in the "UCI HAR Dataset" folder.
 