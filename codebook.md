# Coursera: Getting and Cleaning Data
## Code book

This code book describes the variables, the data, and any transformations or work that was performed to clean up the data.

The generated output is saved to a file tidy.txt. 

The analysis addresses the training and test data separately. First, it combines the three training files (X_train.txt, y_train.txt, subject_train.txt). The second step combines the three test files (X_test.txt, y_test.txt, subject_test.txt). It then merges the training and test data into a single dataset.

The analysis then subsets the data so that only mean and standard deviation measurements from the original data are included. This includes all measurements identified by -mean() or -std() labels.

The analysis continues by taking the average value for each of these measurements by subject and activity. For example, a single subject will include a number of entries for each of the mean and std measurements across six different activities such as standing, walking, etc. The average value for "subject 1 standing" for each measurement is calculated, then for "subject 2 walking", etc, continuing with each subject-activity pair.

The final output is the combined average values by subject-activity pair for every mean or std deviation measurement in the combined data. 

Each row in the output contains the following variables:

"activity"	
"subject"	
"tbodyacc-mean()-x"	
"tbodyacc-mean()-y"	
"tbodyacc-mean()-z"	
"tbodyacc-std()-x"	
"tbodyacc-std()-y"	
"tbodyacc-std()-z"	
"tgravityacc-mean()-x"	
"tgravityacc-mean()-y"	
"tgravityacc-mean()-z"	
"tgravityacc-std()-x"	
"tgravityacc-std()-y"	
"tgravityacc-std()-z"	
"tbodyaccjerk-mean()-x"	
"tbodyaccjerk-mean()-y"	
"tbodyaccjerk-mean()-z"	
"tbodyaccjerk-std()-x"	
"tbodyaccjerk-std()-y"	
"tbodyaccjerk-std()-z"	
"tbodygyro-mean()-x"	
"tbodygyro-mean()-y"	
"tbodygyro-mean()-z"	
"tbodygyro-std()-x"	
"tbodygyro-std()-y"	
"tbodygyro-std()-z"	
"tbodygyrojerk-mean()-x"	
"tbodygyrojerk-mean()-y"	
"tbodygyrojerk-mean()-z"	
"tbodygyrojerk-std()-x"	
"tbodygyrojerk-std()-y"	
"tbodygyrojerk-std()-z"	
"tbodyaccmag-mean()"	
"tbodyaccmag-std()"	
"tgravityaccmag-mean()"	
"tgravityaccmag-std()"	
"tbodyaccjerkmag-mean()"	
"tbodyaccjerkmag-std()"	
"tbodygyromag-mean()"	
"tbodygyromag-std()"	
"tbodygyrojerkmag-mean()"	
"tbodygyrojerkmag-std()"	
"fbodyacc-mean()-x"	
"fbodyacc-mean()-y"	
"fbodyacc-mean()-z"	
"fbodyacc-std()-x"	
"fbodyacc-std()-y"	
"fbodyacc-std()-z"	
"fbodyacc-meanfreq()-x"	
"fbodyacc-meanfreq()-y"	
"fbodyacc-meanfreq()-z"	
"fbodyaccjerk-mean()-x"	
"fbodyaccjerk-mean()-y"	
"fbodyaccjerk-mean()-z"	
"fbodyaccjerk-std()-x"	
"fbodyaccjerk-std()-y"	
"fbodyaccjerk-std()-z"	
"fbodyaccjerk-meanfreq()-x"	
"fbodyaccjerk-meanfreq()-y"	
"fbodyaccjerk-meanfreq()-z"	
"fbodygyro-mean()-x"	
"fbodygyro-mean()-y"	
"fbodygyro-mean()-z"	
"fbodygyro-std()-x"	
"fbodygyro-std()-y"	
"fbodygyro-std()-z"	
"fbodygyro-meanfreq()-x"	
"fbodygyro-meanfreq()-y"	
"fbodygyro-meanfreq()-z"	
"fbodyaccmag-mean()"	
"fbodyaccmag-std()"	
"fbodyaccmag-meanfreq()"	
"fbodybodyaccjerkmag-mean()"	
"fbodybodyaccjerkmag-std()"	
"fbodybodyaccjerkmag-meanfreq()"	
"fbodybodygyromag-mean()"	
"fbodybodygyromag-std()"	
"fbodybodygyromag-meanfreq()"	
"fbodybodygyrojerkmag-mean()"	
"fbodybodygyrojerkmag-std()"	
"fbodybodygyrojerkmag-meanfreq()"

Feature labels from the original dataset are retained, but the value in the output is now the average of all those values by subject-activity. For example, the feature label may be "tbodyacc-mean()-X", but the output is actually the mean of the "tbodyacc-mean()-X" values for each subject-activity pair.

