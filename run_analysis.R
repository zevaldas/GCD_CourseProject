#Download and unzip data
DataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
DataFile <- "data.zip"
download.file(DataUrl, destfile=DataFile, quiet=TRUE, method="curl")
unzip(DataFile)

#Read train data
XTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
YTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
SubjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Read test data
XTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
YTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
SubjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Merge the training and the test sets to the one data set
XData <- rbind(XTrain, XTest)
YData <- rbind(YTrain, YTest)
names(YData) <- c("ActivityNumber")
SubjectData <- rbind(SubjectTrain, SubjectTest)
names(SubjectData) <- c("Subject")
MergedData <- cbind(SubjectData, YData, XData)

#Extract only the measurements on the mean and standard deviation for each measurement
#Read all features
Features <- read.table("./UCI HAR Dataset/features.txt")
names(Features) <- c("FeatureNumber", "FeatureName")
#Extract the measurements on the mean and standard deviation
SpecialMeasurments <- subset(Features, grepl("mean\\(\\)|std\\(\\)", Features$FeatureName)) 
SpecialMeasurments$ColumnNo <- SpecialMeasurments$FeatureNumber + 2
#Create new data set (leaving ActivityNumber and Subject)
ExtractedData <- MergedData[, c(1, 2, SpecialMeasurments$ColumnNo)]

#Uses descriptive activity names to name the activities in the data set
Activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(Activities) <- c("ActivityNumber", "ActivityName")
ExtractedData <- merge(ExtractedData, Activities, by="ActivityNumber")

#Appropriately labels the data set with descriptive variable names
#Change mean() to Mean and std() to StdDev
SpecialMeasurments$FeatureName <- gsub("mean\\(\\)", "Mean", SpecialMeasurments$FeatureName)
SpecialMeasurments$FeatureName <- gsub("std\\(\\)", "StdDev", SpecialMeasurments$FeatureName)
# Remove all "-" 
SpecialMeasurments$FeatureName <- gsub("-", "", SpecialMeasurments$FeatureName)
#Change variable names to appropriate labels
names(ExtractedData)[3:(nrow(SpecialMeasurments)+2)] <- SpecialMeasurments$FeatureName

#Create a second, independent tidy data set with the average of each variable for each activity and each subject
library(reshape2)
#Melt data
IDLabels <- c("ActivityNumber", "Subject", "ActivityName")
MeltedData <- melt(ExtractedData, IDLabels)
# Calculate average
TidyData <- dcast(MeltedData, Subject + ActivityName ~ variable, mean)
#Write data set to file TidyData.txt
write.table(TidyData, file="TidyData.txt", row.name=FALSE)
