#Human Activity Recognition Using Smartphones Dataset (tidy data)
Data in the file TidyData.txt is derived from Human Activity Recognition Using Smartphones Dataset (original data can be dowloanded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). In this file is provided information about tidy data which was produced after cleaning and transforming original data.

##Original data description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Transformation and clean-up
To transform and clean-up data was done the following steps:

1. Merge the training and the test sets to create one data set
2. Extract only the measurements on the mean and standard deviation for each measurement
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject

##Data
  Data consists of 180 observations and 68 variables.

##Variables
| Variable | Type | Description |
| --- |---| ---|
| Subject | int [1,30] | The subject who performed the activity for each window sample. Its range is from 1 to 30. |
| ActivityName | Factor w/ 6 levels | One of activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
| tBodyAccMeanX | num [-1,1] | Average of mean of body acceleration in X axis for specific activity and specific subject (time domain) |
| tBodyAccMeanY | num [-1,1] | Average of mean of body acceleration in Y axis for specific activity and specific subject (time domain) |
| tBodyAccMeanZ | num [-1,1] | Average of mean of body acceleration in Z axis for specific activity and specific subject (time domain) |
| tBodyAccStdDevX | num [-1,1] | Average of standard deviation of body acceleration in X axis for specific activity and specific subject (time domain) |
| tBodyAccStdDevY | num [-1,1] | Average of standard deviation of body acceleration in Y axis for specific activity and specific subject (time domain) |
| tBodyAccStdDevZ | num [-1,1] | Average of standard deviation of body acceleration in Z axis for specific activity and specific subject (time domain) |
| tGravityAccMeanX | num [-1,1] | Average of mean of gravity acceleration in X axis for specific activity and specific subject (time domain) |
| tGravityAccMeanY | num [-1,1] | Average of mean of gravity acceleration in Y axis for specific activity and specific subject (time domain) |
| tGravityAccMeanZ | num [-1,1] | Average of mean of gravity acceleration in Z axis for specific activity and specific subject (time domain) |
| tGravityAccStdDevX | num [-1,1] | Average of standard deviation of gravity acceleration in X axis for specific activity and specific subject (time domain) |
| tGravityAccStdDevY | num [-1,1] | Average of standard deviation of gravity acceleration in Y axis for specific activity and specific subject (time domain) |
| tGravityAccStdDevZ | num [-1,1] | Average of standard deviation of gravity acceleration in Z axis for specific activity and specific subject (time domain) |
| tBodyAccJerkMeanX | num [-1,1] | Average of mean of body acceleration jerk in X axis for specific activity and specific subject (time domain) |
| tBodyAccJerkMeanY | num [-1,1] | Average of mean of body acceleration jerk in Y axis for specific activity and specific subject (time domain)|
| tBodyAccJerkMeanZ | num [-1,1] | Average of mean of body acceleration jerk in Z axis for specific activity and specific subject (time domain)|
| tBodyAccJerkStdDevX | num [-1,1] | Average of standard deviation of body acceleration jerk in X axis for specific activity and specific subject (time domain) |
| tBodyAccJerkStdDevY | num [-1,1] | Average of standard deviation of body acceleration jerk in Y axis for specific activity and specific subject (time domain) |
| tBodyAccJerkStdDevZ | num [-1,1] | Average of standard deviation of body acceleration jerk in Z axis for specific activity and specific subject (time domain) |
| tBodyGyroMeanX | num [-1,1] | Average of mean of body angular speed in X axis for specific activity and specific subject (time domain) |
| tBodyGyroMeanY | num [-1,1] | Average of mean of body angular speed in Y axis for specific activity and specific subject (time domain) |
| tBodyGyroMeanZ | num [-1,1] | Average of mean of body angular speed in Z axis for specific activity and specific subject (time domain) |
| tBodyGyroStdDevX | num [-1,1] | Average of standard deviation of body angular speed in X axis for specific activity and specific subject (time domain) |
| tBodyGyroStdDevY | num [-1,1] | Average of standard deviation of body angular speed in Y axis for specific activity and specific subject (time domain) |
| tBodyGyroStdDevZ | num [-1,1] | Average of standard deviation of body angular speed in Z axis for specific activity and specific subject (time domain) |
| tBodyGyroJerkMeanX | num [-1,1] | Average of mean of body angular acceleration in X axis for specific activity and specific subject (time domain) |
| tBodyGyroJerkMeanY | num [-1,1] | Average of mean of body angular acceleration in Y axis for specific activity and specific subject (time domain) |
| tBodyGyroJerkMeanZ | num [-1,1] | Average of mean of body angular acceleration in Z axis for specific activity and specific subject (time domain) |
| tBodyGyroJerkStdDevX | num [-1,1] | Average of standard deviation of body angular acceleration in X axis for specific activity and specific subject (time domain) |
| tBodyGyroJerkStdDevY | num [-1,1] | Average of standard deviation of body angular acceleration in Y axis for specific activity and specific subject (time domain) |
| tBodyGyroJerkStdDevZ | num [-1,1] | Average of standard deviation of body angular acceleration in Z axis for specific activity and specific subject (time domain) |
| tBodyAccMagMean | num [-1,1] | Average of mean of body acceleration magnitude for specific activity and specific subject (time domain) |
| tBodyAccMagStdDev | num [-1,1] | Average of standard deviation of body acceleration magnitude for specific activity and specific subject (time domain) |
| tGravityAccMagMean | num [-1,1] | Average of mean of gravity acceleration magnitude for specific activity and specific subject (time domain) |
| tGravityAccMagStdDev | num [-1,1] | Average of standard deviation of gravity acceleration magnitude for specific activity and specific subject (time domain) |
| tBodyAccJerkMagMean | num [-1,1] | Average of mean of body acceleration jerk magnitude for specific activity and specific subject (time domain) |
| tBodyAccJerkMagStdDev | num [-1,1] | Average of standard deviation of body acceleration jerk magnitude for specific activity and specific subject (time domain) |
| tBodyGyroMagMean | num [-1,1] | Average of mean of body angular speed magnitude for specific activity and specific subject (time domain) |
| tBodyGyroMagStdDev | num [-1,1] | Average of standard deviation of body angular speed magnitude for specific activity and specific subject (time domain) |
| tBodyGyroJerkMagMean | num [-1,1] | Average of mean of body angular acceleration  magnitude for specific activity and specific subject (time domain) |
| tBodyGyroJerkMagStdDev | num [-1,1] | Average of standard deviation of body angular acceleration  magnitude for specific activity and specific subject (time domain) |
| fBodyAccMeanX | num [-1,1] | Average of mean of body acceleration in X axis for specific activity and specific subject (frequency domain) |
| fBodyAccMeanY | num [-1,1] | Average of mean of body acceleration in Y axis for specific activity and specific subject (frequency domain) |
| fBodyAccMeanZ | num [-1,1] | Average of mean of body acceleration in Z axis for specific activity and specific subject (frequency domain) |
| fBodyAccStdDevX | num [-1,1] | Average of standard deviation of body acceleration in X axis for specific activity and specific subject (frequency domain) |
| fBodyAccStdDevY | num [-1,1] | Average of standard deviation of body acceleration in Y axis for specific activity and specific subject (frequency domain) |
| fBodyAccStdDevZ | num [-1,1] | Average of standard deviation of body acceleration in Z axis for specific activity and specific subject (frequency domain) |
| fBodyAccJerkMeanX | num [-1,1] | Average of mean of body acceleration jerk in X axis for specific activity and specific subject (frequency domain) |
| fBodyAccJerkMeanY | num [-1,1] | Average of mean of body acceleration jerk in Y axis for specific activity and specific subject (frequency domain) |
| fBodyAccJerkMeanZ | num [-1,1] | Average of mean of body acceleration jerk in Z axis for specific activity and specific subject (frequency domain) |
| fBodyAccJerkStdDevX | num [-1,1] | Average of standard deviation of body acceleration jerk in X axis for specific activity and specific subject (frequency domain) |
| fBodyAccJerkStdDevY | num [-1,1] | Average of standard deviation of body acceleration jerk in Y axis for specific activity and specific subject (frequency domain) |
| fBodyAccJerkStdDevZ | num [-1,1] | Average of standard deviation of body acceleration jerk in Z axis for specific activity and specific subject (frequency domain) |
| fBodyGyroMeanX | num [-1,1] | Average of mean of body angular speed in X axis for specific activity and specific subject (frequency domain) |
| fBodyGyroMeanY | num [-1,1] | Average of mean of body angular speed in Y axis for specific activity and specific subject (frequency domain) |
| fBodyGyroMeanZ | num [-1,1] | Average of mean of body angular speed in Z axis for specific activity and specific subject (frequency domain) |
| fBodyGyroStdDevX | num [-1,1] | Average of standard deviation of body angular speed in X axis for specific activity and specific subject (frequency domain) |
| fBodyGyroStdDevY | num [-1,1] | Average of standard deviation of body angular speed in Y axis for specific activity and specific subject (frequency domain) |
| fBodyGyroStdDevZ | num [-1,1] | Average of standard deviation of body angular speed in Z axis for specific activity and specific subject (frequency domain) |
| fBodyAccMagMean | num [-1,1] | Average of mean of body acceleration magnitude for specific activity and specific subject (frequency domain)|
| fBodyAccMagStdDev | num [-1,1] | Average of standard deviation of body acceleration magnitude for specific activity and specific subject (frequency domain) |
| fBodyBodyAccJerkMagMean | num [-1,1] | Average of mean of body acceleration jerk magnitude for specific activity and specific subject (frequency domain) |
| fBodyBodyAccJerkMagStdDev | num [-1,1] | Average of standard deviation of body acceleration jerk magnitude for specific activity and specific subject (frequency domain) |
| fBodyBodyGyroMagMean | num [-1,1] | Average of mean of body angular speed magnitude for specific activity and specific subject (frequency domain) |
| fBodyBodyGyroMagStdDev | num [-1,1] | Average of standard deviation of body angular speed magnitude for specific activity and specific subject (frequency domain) |
| fBodyBodyGyroJerkMagMean | num [-1,1] | Average of mean of body angular acceleration  magnitude for specific activity and specific subject (frequency domain) |
| fBodyBodyGyroJerkMagStdDev | num [-1,1] | Average of standar deviation of body angular acceleration  magnitude for specific activity and specific subject (frequency domain) |