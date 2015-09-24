# getdata-032 - Getting and Cleaning Data -- Course Project
===========================================================

This file explains how Run_Analysis.R works in order to produce a tidy data set from
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the proyect can be retrieved at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script works as follows:

0. Load Data into R
Read Files under directory UCI HAR Dataset
Read different variables: Activity (Test and Train), Subject (Test and Train) Features (Test and Train)
Concatenate the data_tables train + test by rows regarding subject, activity and features
Set descriptive names to variables
Obtain unique column_ids for "select" in dplyr

1. Merges the training and the test sets to create one data set
Merges Activity, Subject and Features data sets by column

2. Extracts only the measurements on the mean and standard deviation for each measurement.
Filter columns to get the data for mean(), std(), activity, subject

3. Uses descriptive activity names to name the activities in the data set

4 Appropriately labels the data set with descriptive variable names

5. Creates a second,independent tidy data set and ouput it
First aggregate data to calculate mean by (subject & activity variables)
Second arrange data by subject and activity
Third wirte output to "tidydata.txt"
