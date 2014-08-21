#Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This project contains four files. Below you can find all files description.

##README.md
Contains project description (this file).

##run_analysis.R
R script which cleans-up and transforms original data. This script do the following steps:

1. Merges the training and the test sets to create one data set
  * Downloads data from server
  * Unzips data in the working directory
  * Reads training data (X_train.txt, y_train.txt, subject_train.txt)
  * Reads testing data (X_test.txt, y_test.txt, subject_test.txt)
  * Merges training and testing data to one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
  * Reads features file with varaibles names (features.txt)
  * Extracts only variables containing in the name "mean()" or "std()"
  * Creates new data set with selected variables (including ActivityNumber and Subject varaibles)
3. Uses descriptive activity names to name the activities in the data set
  * Reads activities labels from file (activity_labels.txt)
  * Merges activities names with data set
4. Appropriately labels the data set with descriptive variable names
  * Change in labes "mean()" to "Mean" and "std()" to "StdDev"
  * Remove all "-" from labels
  * Change variable names to appropriate labels
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  * Melt data (except activity and subject related variables)
  * Calculate average of each variable for each activity and each subject
  * Write tidy data to file TidyData.txt

##TidyData.txt
Independent tidy data set with the average of each variable for each activity and each subject which was produced by run_analysis.R script.

##CodeBook.md
The code book that describes the variables, the data, and any transformations or work that was performed to clean up the data.