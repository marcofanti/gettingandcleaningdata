# Coursera: Getting and Cleaning Data
## Code book

This code book describes the variables, the data, and any transformations or work that you performed to clean up the data.

The generated output is saved to a file tidy.txt. This file includes all rows merged from the test and training data included in the activity recognition dataset.

The analysis addresses the training and test data separately. First, it combines the three training files (X_train.txt, y_train.txt, subject_train.txt). The second step combines the three test files (X_test.txt, y_test.txt, subject_test.txt). It then merges the training and test data into a single dataset.

The analysis then subsets the data so that only mean and standard deviation measurements from the original data are included. This includes all measurements identified by -mean() or -std() labels.

The analysis continues by taking the average value for each of these measurements by subject and activity. For example, a single subject will include a number of entries for each of the mean and std measurements across six different activities such as standing, walking, etc. The average value for "subject 1 standing" for each measurement is calculated, then for "subject 2 walking", etc, continuing with each subject-activity pair.

The final output is the combined average values by subject-activity pair for every mean or std deviation measurement in the combined data. Feature labels from the original dataset are retained, but the value in the output is now the average of all those values by subject-activity. For example, the feature label may be "tbodyacc-mean()-X", but the output is actually the mean of the "tbodyacc-mean()-X" values for each subject-activity pair.