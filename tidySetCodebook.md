# tidySetCodebook

This file contains explanation about the data processing procedure, as well as some information about the data itself.
- a script called run_analysis.R, 
- a code-book called tidySetCodebook.md 
- a file called tidySet.txt which is the result of the analysis.

### Data processing
As you can see in the code itself, we start by merging the training set and test set provided in the complete dataset (see link below). We then only choose the relevant ones (containing either "mean" or "std").
We then change the label numbers to meaningful activity names by reading them from the activity table and adding them to the dataset. 
Finally we creat a second, independent tidy data set with the average of each variable for each activity and each subject (on which there are more details below).

### About the data
The data presented in tidySet.csv is a summary and manipulation of data collected from the accelerometers from the Samsung Galaxy S smartphone.

The complete dataset, prior to manipulation can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

There are 180 observations in the file. They represent the averages of mean and standard deviations for measurement means and standard deviations taken in the initial data gathering, for each subject in the test and training sets and for each activity. 

With a total of 30 subjects and 6 types of activities – we have 180 observations to account for (a row per subject, activity pair). 

The 3:68 columns in the dataset represent averages of the following measurements for each pair:

3.	tBodyAcc-mean()-X
4.	tBodyAcc-mean()-Y
5.	tBodyAcc-mean()-Z 
6.	tBodyAcc-std()-X
7.	tBodyAcc-std()-Y
8.	tBodyAcc-std()-Z
9.	tGravityAcc-mean()-X
10.	tGravityAcc-mean()-Y
11.	tGravityAcc-mean()-Z
12.	tGravityAcc-std()-X
13.	tGravityAcc-std()-Y
14.	tGravityAcc-std()-Z
15.	tBodyAccJerk-mean()-X
16.	tBodyAccJerk-mean()-Y
17.	tBodyAccJerk-mean()-Z
18.	tBodyAccJerk-std()-X
19.	tBodyAccJerk-std()-Y
20.	tBodyAccJerk-std()-Z
21.	tBodyGyro-mean()-X
22.	tBodyGyro-mean()-Y
23.	tBodyGyro-mean()-Z
24.	tBodyGyro-std()-X
25.	tBodyGyro-std()-Y
26.	tBodyGyro-std()-Z
27.	tBodyGyroJerk-mean()-X
28.	tBodyGyroJerk-mean()-Y
29.	tBodyGyroJerk-mean()-Z
30.	tBodyGyroJerk-std()-X
31.	tBodyGyroJerk-std()-Y
32.	tBodyGyroJerk-std()-Z
33.	tBodyAccMag-mean()
34.	tBodyAccMag-std()
35.	tGravityAccMag-mean
36.	tGravityAccMag-std
37.	tBodyAccJerkMag-mean()
38.	tBodyAccJerkMag-std()
39.	tBodyGyroMag-mean()
40.	tBodyGyroMag-std()
41.	tBodyGyroJerkMag-mean()
42.	tBodyGyroJerkMag-std()
43.	fBodyAcc-mean()-X
44.	fBodyAcc-mean()-Y
45.	fBodyAcc-mean()-Z
46.	fBodyAcc-std()-X
47.	fBodyAcc-std()-Y
48.	fBodyAcc-std()-Z
49.	fBodyAccJerk-mean()-X
50.	fBodyAccJerk-mean()-Y
51.	fBodyAccJerk-mean()-Z
52.	fBodyAccJerk-std()-X
53.	fBodyAccJerk-std()-Y
54.	fBodyAccJerk-std()-Z
55.	fBodyGyro-mean()-X
56.	fBodyGyro-mean()-Y
57.	fBodyGyro-mean()-Z
58.	fBodyGyro-std()-X
59.	fBodyGyro-std()-Y
60.	fBodyGyro-std()-Z
61.	fBodyAccMag-mean()
62.	fBodyAccMag-std()
63.	fBodyBodyAccJerkMag-mean()
64.	fBodyBodyAccJerkMag-std()
65.	fBodyBodyGyroMag-mean()
66.	fBodyBodyGyroMag-std()
67.	fBodyBodyGyroJerkMag-mean()
68.	fBodyBodyGyroJerkMag-std()
