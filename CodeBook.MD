## Getting and Cleaning Data Project

### Description

Additional information about variables, data and transformations used in the script (run_analysis.R) for the course project Getting and Cleaning Data course. The purpose of this script is to assign column names and merge to create one tidydata set.

### Source Data

A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The source data for this project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Information

For each record in the dataset it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

#### Section 1. Merge the training and the test sets to create one data set.

After download the data and setting the source path for the data files, the below files have been loaded into tables -

1. *features.txt*
2. *activity_labels.txt*
3. *subject_train.txt*
4. *x_train.txt*
5. *y_train.txt*
6. *subject_test.txt*
7. *x_test.txt*
8. *y_test.txt*


#### Section 2. Extract only the measurements on the mean and standard deviation for each measurement.

Create a vector that contains only columns with mean() or std() in their names. Subset this data to keep only the necessary columns.

#### Section 3. Use descriptive activity names to name the activities in the data set

Update values with correct descriptive activity names for the activities

#### Section 4. Appropriately label the data set with descriptive activity names.

Update the data labels appropriately and bind all data set into one.

#### Section 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

As per the project instructions, we need to produce only a data set with the average of each veriable for each activity and subject