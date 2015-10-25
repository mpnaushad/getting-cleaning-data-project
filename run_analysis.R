#========================================================================================================

# Getting and Cleaning Data Course Project

# File Name: run_analysis.R 

# This script will demonstrate how to collect, work with and clean a data set using the UCI HAR Dataset 
# downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# There are 5 steps executed in this code to create the final tidyData.txt
# The steps are described below as the code move forward step-by-step.

#========================================================================================================

# We will be using the below library for Split data frame, apply function, and return results in a data frame

library(plyr)

# Step 1
# Merge the training and test sets into one data set
#========================================================================================================


# Read train data set
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

# Read test data set
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Create 'x' data set from train and test
x_data <- rbind(x_train, x_test)

# Create 'y' data set from train and test
y_data <- rbind(y_train, y_test)

# Create 'subject' data set from train and test
subject_data <- rbind(subject_train, subject_test)

# Step 2
# Extract only the columns for measurements on the mean and standard deviation 
#========================================================================================================

# Read from features
features <- read.table("features.txt")

# Extract only columns with mean() or std() in their names
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

# Subset x_data based on the desired columns
x_data <- x_data[, mean_and_std_features]

# Replace the column names
names(x_data) <- features[mean_and_std_features, 2]

# Step 3
# Use descriptive activity names to name the activities in the data set
#========================================================================================================

activities <- read.table("activity_labels.txt")

# Replace with correct activity names
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

# Step 4
# Appropriately label the data set with descriptive variable names
#========================================================================================================

# Replace column name
names(subject_data) <- "subject"

# Bind all the data into a single data set
all_data <- cbind(x_data, y_data, subject_data)

# Step 5
# Create a second, independent tidy data set with the average of each variable for each activity and each subject
#========================================================================================================

# Calculate average of all columns but the last two (activity & subject)
tidyData <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

# Create tidyData set with write.table() using row.name=FALSE
write.table(tidyData, "tidyData.txt", row.name=FALSE)