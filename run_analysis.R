## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Go to the appropriate directory
setwd("~/Development/R_dir/GetAndCleaningData")

# Read train data
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainData[,562] <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainData[,563] <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read test data.
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
testData[,562] <- read.table("./UCI HAR Dataset/test/y_test.txt")
testData[,563] <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Merges the training and the test sets to create one data set.
allData = rbind(trainData, testData)

# Read activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Read data column names
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Extracts only the measurements on the mean and standard deviation for each measurement. 
extractedFeatures <- grepl("mean|std", features)

# Include the values from y_ and subject_ tables
extractedFeatures <- c(extractedFeatures, TRUE, TRUE)

# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
names(allData) <- features
colnames(allData)[562] <- "activity"
colnames(allData)[563] <- "subject"
colnames(allData) <- tolower(colnames(allData))

# Extract only the measurements on the mean and standard deviation for each measurement.
allData = allData[,extractedFeatures]

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy = aggregate(allData, by=list(activity = allData$activity, subject=allData$subject), mean)

# Remove the activity and subject columns
tidy[,83] = NULL
tidy[,82] = NULL

write.table(tidy, "./UCI HAR Dataset/tidy.txt", sep="\t", row.name=FALSE)