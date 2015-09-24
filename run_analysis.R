## Load Libraries
library("data.table")
library("dplyr")

# 0. Load Data

## Read Files

path_rf <- file.path("UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)

## Read different variables
## dataActivityTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
## dataActivityTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)

## dataSubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
## dataSubjectTest  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)

## dataFeaturesTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
## dataFeaturesTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

## Concatenate the data_tables by rows

dataSubject <- bind_rows(dataSubjectTrain, dataSubjectTest)
dataActivity<- bind_rows(dataActivityTrain, dataActivityTest)
dataFeatures<- bind_rows(dataFeaturesTrain, dataFeaturesTest)

## Set descriptive names to variables

names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(dataFeatures)<- as.character(dataFeaturesNames$V2)


## Obtain unique column_ids
names(dataFeatures) <- make.names(names=names(dataFeatures), unique=TRUE, allow_ = TRUE)

# 1. Merges the training and the test sets to create one data set

Data <- bind_cols(dataActivity, dataSubject, dataFeatures)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

## Filter columns to get the data for mean(), std(), activity, subject

Data2 <- select(Data, 
                contains("mean[:punct:]([:punct:])"),
                contains("std"),
                contains("subject") ,
                contains("activity") )


# 3. Uses descriptive activity names to name the activities in the data set

activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)
activityLabels$V2 <- as.character(activityLabels$V2 )
Data3 <- mutate(Data2, activity = activityLabels$V2[activity])

# 4. Appropriately labels the data set with descriptive variable names

names(Data3)<-gsub("^t", "time", names(Data3))
names(Data3)<-gsub("^f", "frequency", names(Data3))
names(Data3)<-gsub("Acc", "Accelerometer", names(Data3))
names(Data3)<-gsub("Gyro", "Gyroscope", names(Data3))
names(Data3)<-gsub("Mag", "Magnitude", names(Data3))
names(Data3)<-gsub("BodyBody", "Body", names(Data3))

# 5. Creates a second,independent tidy data set and ouput it

Data4 <-aggregate(. ~subject + activity, Data3, mean)
Data5 <-Data4[order(Data4$subject,Data4$activity),]
write.table(Data5, file = "tidydata.txt",row.name=FALSE)