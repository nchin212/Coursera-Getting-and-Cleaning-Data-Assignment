CodeBook
========

This file describes the variables, the data, and any transformations or
work that are performed to clean up the data.

Data
----

A full description is available at the site where the data was obtained:

<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>

The data for the project can be obtained from:

<a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" class="uri">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>

Data Cleaning Process
---------------------

Below is the list of steps needed to transform the raw data into tidy
data:

1.  Merge the training and the test sets to create one data set
2.  Extract only the measurements on the mean and standard deviation for
    each measurement
3.  Use descriptive activity names to name the activities in the data
    set
4.  Appropriately label the data set with descriptive variable names
5.  From the data set in step 4, create a second, independent tidy data
    set with the average of each variable for each activity and each
    subject

More details can be found in [run\_analysis.R](https://github.com/nchin212/Coursera-Getting-and-Cleaning-Data-Assignment/blob/master/run_analysis.R)
