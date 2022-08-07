#Get Clean Data - Project

###
### Part 1 - Setup and load data
###

# Clear the workspace and load required packages
rm(list = ls())
library(readr)
library(dplyr)


# Load the zip file that containts the data files and unzip data into project folder
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "project.zip")
unzip("project.zip", list = TRUE) #view the files in the zip folder
unzip("project.zip") #unzip file into project directory

###
### Part 2 - Combine the train and test data
###


# Load in the test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
x_test <- read.table("UCI HAR Dataset/test/x_test.txt", header = FALSE)

# See variable names in features file
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE)
head(features)

# Rename the columns of the test data
colnames(subject_test) <- "Subject"
head(subject_test)

colnames(y_test) <- "Activity"
head(y_test)

# label the data set with descriptive variable names
head(x_test)[1:5]
colnames(x_test) <- features$V2
head(x_test)[1:5]

test_data <- cbind(subject_test, y_test, x_test)

# Load in the training data
unzip("project.zip", list = TRUE) #view file names

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
x_train <- read.table("UCI HAR Dataset/train/x_train.txt", header = FALSE)

# Rename the columns of the test data
head(subject_train)
colnames(subject_train) <- "Subject"
head(subject_train)

colnames(y_train) <- "Activity"
head(y_train)

# Label the data set with descriptive variable names 
head(x_train)[1:5]
colnames(x_train) <- features$V2
head(x_train)[1:5]

train_data <- cbind(subject_train, y_train, x_train)

# Combine train and test data
total_data <- rbind(train_data, test_data)


###
### Part 3 - Extract only the measurements on the mean and standard deviation for each measurement. 
###

data_mean_std <- total_data %>%
  select( contains("Subject") | contains("Activity") | contains("mean") | contains("std"))


###
### Part 4 - Use descriptive activity names to name the activities in the data set
###

# Read in the activity labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
activities
colnames(activities) <- c("Activity", "Activity_Label")
activities

# Create a column in the data set called "Activity_Label" that describes the activity value
data_mean_std <- data_mean_std %>%
  left_join(activities, by = "Activity") %>%
  select(Subject, Activity, Activity_Label, everything())

colnames(data_mean_std)

###
### Part 5 - From the prior data set, create a second, independent tidy data set with the average of each variable for each activity and each subject.
###

# create the new data set
tidydata <- data_mean_std %>%
  group_by(Subject, Activity_Label) %>%
  summarise(across(everything(), mean))

# write the new data as a text file  
write.table(tidydata, file = "tidydata.txt", row.name=FALSE)