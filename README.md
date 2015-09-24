# getdata-032 - Getting and Cleaning Data - Course Project
===========================================================

This file explains how 'Run_Analysis.R' works in order to produce a tidy data set from
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the proyect can be retrieved at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script works as follows:

0. Load Data into R <br />
   Read Files under directory UCI HAR Dataset <br />
   Read different variables: Activity (Test and Train), Subject (Test and Train) Features (Test and Train) <br />
   Concatenate the data_tables train + test by rows regarding subject, activity and features <br />
   Set descriptive names to variables <br />
   Obtain unique column_ids for "select" in dplyr <br />

1. Merges the training and the test sets to create one data set <br />
   Merges Activity, Subject and Features data sets by column <br />

2. Extracts only the measurements on the mean and standard deviation for each measurement. <br />
   Filter columns to get the data for mean(), std(), activity, subject <br />

3. Uses descriptive activity names to name the activities in the data set <br />

4. Appropriately labels the data set with descriptive variable names <br />

5. Creates a second,independent tidy data set and ouput it <br />
   First aggregate data to calculate mean by (subject & activity variables) <br />
   Second arrange data by subject and activity <br />
   Third wirte output to '"tidydata.txt"' <br />
