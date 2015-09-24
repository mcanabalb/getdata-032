---
output: html_document
---
# Codebook for Getting and Cleaning Data Course Project

Follwing the guidelines of https://github.com/jtleek/datasharing, this Codebook provides:
 
- Information about the variables (including units!) in the data set not contained in the tidy data
- Information about the summary choices you made
- Information about the experimental study design you used

## Description of each of the variables, including units

This dataset includes the mean and standard deviation variables from the HAR study. These were selected by including all variables with "mean" or "std" in their name from the original dataset. Of the original 561 variables, the following 66 met the critera for inclusion:

tBodyAcc-mean()-X </br>
tBodyAcc-mean()-Y </br>
tBodyAcc-mean()-Z </br>
tBodyAcc-std()-X </br>
tBodyAcc-std()-Y </br>
tBodyAcc-std()-Z </br>
tGravityAcc-mean()-X </br>
tGravityAcc-mean()-Y </br>
tGravityAcc-mean()-Z </br>
tGravityAcc-std()-X </br>
tGravityAcc-std()-Y </br>
tGravityAcc-std()-Z </br>
tBodyAccJerk-mean()-X </br>
tBodyAccJerk-mean()-Y </br>
tBodyAccJerk-mean()-Z </br>
tBodyAccJerk-std()-X </br>
tBodyAccJerk-std()-Y </br>
tBodyAccJerk-std()-Z </br>
tBodyGyro-mean()-X </br>
tBodyGyro-mean()-Y </br>
tBodyGyro-mean()-Z </br>
tBodyGyro-std()-X </br>
tBodyGyro-std()-Y </br>
tBodyGyro-std()-Z </br>
tBodyGyroJerk-mean()-X </br>
tBodyGyroJerk-mean()-Y </br>
tBodyGyroJerk-mean()-Z </br>
tBodyGyroJerk-std()-X </br>
tBodyGyroJerk-std()-Y </br>
tBodyGyroJerk-std()-Z </br>
tBodyAccMag-mean() </br>
tBodyAccMag-std() </br>
tGravityAccMag-mean() </br>
tGravityAccMag-std() </br>
tBodyAccJerkMag-mean() </br>
tBodyAccJerkMag-std() </br>
tBodyGyroMag-mean() </br>
tBodyGyroMag-std() </br>
tBodyGyroJerkMag-mean() </br>
tBodyGyroJerkMag-std() </br>
fBodyAcc-mean()-X </br>
fBodyAcc-mean()-Y </br>
fBodyAcc-mean()-Z </br>
fBodyAcc-std()-X </br>
fBodyAcc-std()-Y </br>
fBodyAcc-std()-Z </br>
fBodyAccJerk-mean()-X </br>
fBodyAccJerk-mean()-Y </br>
fBodyAccJerk-mean()-Z </br>
fBodyAccJerk-std()-X </br>
fBodyAccJerk-std()-Y </br>
fBodyAccJerk-std()-Z </br>
fBodyGyro-mean()-X </br>
fBodyGyro-mean()-Y </br>
fBodyGyro-mean()-Z </br>
fBodyGyro-std()-X </br>
fBodyGyro-std()-Y </br>
fBodyGyro-std()-Z </br>
fBodyAccMag-mean() </br>
fBodyAccMag-std() </br>
fBodyBodyAccJerkMag-mean()  </br>
fBodyBodyAccJerkMag-std() </br>
fBodyBodyGyroMag-mean() </br>
fBodyBodyGyroMag-std() </br>
fBodyBodyGyroJerkMag-mean() </br>
fBodyBodyGyroJerkMag-std() </br>
 

This is a selection of variables from the HAR data, which are described in detail in the file `features_info.txt` in the data set.  

## Summary choices: Information about the summary choices

The summary made in creating this dataset based on the HAR data were in order to create a second, independent tidy data set with the average of each variable for each activity and each subject.

So, each of the 66 variables above from the HAR data is averaged (mean) across all overvations for each subject-activity pair, resulting in a total of 180 observations (30 subjects x 6 activities).

## Study Design

This dataset cleans and aggregates data from the HAR project. The study design for that project is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones