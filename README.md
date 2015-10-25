## Getting and Cleaning Data Project

This is the repo for course project for the **Getting and Cleaning Data** Coursera course. 

### Overview

This project demonstrate the collection and cleaning of a tidy data set that can be used for subsequent analysis.

### High Level Project Summary

1. Download the dataset if it does not already exist in the working directory
2. Load the activity and feature info
3. Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
4. Loads the activity and subject data for each dataset, and merges those columns with the dataset
5. Merges the two datasets
6. Converts the activity and subject columns into factors
7. Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.

The end result is shown in the file *tidyData.txt*.

### Additional and Detail Information

Please refer to the **CodeBook.MD** for detail code information. 