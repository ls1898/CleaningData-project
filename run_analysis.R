## loading used libraries
library(plyr)
library(dplyr)

# download and unzip the folder
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "Dataset.zip")
unzip("Dataset.zip")

## Read the test data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
testLabels <- read.table("UCI HAR Dataset/test/y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
testTable <- cbind(X_test, testLabels, testSubjects)

## Read the training data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
trainLabels <- read.table("UCI HAR Dataset/train/y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainTable <- cbind(X_train, trainLabels, trainSubjects)

## Question 1: 
## Merge train and test sets (no two subjects the same, so using rbind to create one big table)
CompTable <- rbind(testTable, trainTable)

## Question 2: 
## Read column names, and choose only the relelvant ones - containing either "mean" or "std"
features <- read.table("UCI HAR Dataset/features.txt")
col_names <- (grepl("mean", as.character(features$V2)) | grepl("std", as.character(features$V2))) & !grepl("Freq", as.character(features$V2))
MSTable <- CompTable[,col_names]

## Question 3: 
## Read label names and change to descriptive activity names
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
MSTable$V1.1 <- activityLabels$V2[MSTable$V1.1]

## Question 4: 
## Add descriptive variable names based on features list
names(MSTable) <- c(as.character(features$V2[col_names]), "activity_name", "subject")

## Question 5:
## Create a second, independent tidy data set with the average of each variable for each activity and each subject.

## Start by crating a table data frame
dataMSTable <- tbl_df(MSTable)

## Apply the mean for each of the columns in the table based on grouping by activity namd and subject, 
## using summarise_each with the mean function to get the desired 30 (subjects) X 6 (activities) 
## number of rows
tidySet <- dataMSTable %>%
  group_by(subject, activity_name) %>%
  summarise_each(funs(mean), 1:66) 

## Save the new tidy data to a new txt file
write.table(tidySet, file = "tidySet.txt",row.names = FALSE)