# GettingAndCleaningDataProject
## Purpose
The purpose of the run_analysis.R script is to create an independent tidy data text file from the data sets provided by the Human Activity Recognition Using Smartphone study that meets the requirement of the course project of the Getting and Cleaning Data Coursera course.  Please see the following link for more information on the Human Activity Recognition Using Smartphone study and how the data in that study was collected:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The Coursera project description can be found here: https://class.coursera.org/getdata-030/human_grading/view/courses/975114/assessments/3/submissions

The data text file created, resultTidy.txt, provides the mean of each of the variables in the source datasets that are either mean or standard deviation measures by each subject and activity.  
Please see the code book, CodeBook.md, for more information on the created data set, the contained variable information, summary choices made, and study design.

The created data set, resultTidy.txt,was created to meet the following requirements of tidy data:
1. Each variable is in one column
2. Each different observation of each variable is in a different row
3. Only one table has been created for each kind of variable


## Prerequisites

A. The following files must exist in the current working directory along with the run_analysis.R script for the script to execute without error:

* activity_labels.txt
* features.txt
* subject_test.txt
* subject_train.txt
* X_test.txt
* X_train.txt
* y_test.txt
* y_train.txt


The data files can be obtained at the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
You must unzip the downloaded archive and move the required files into the working directory manually.

B. The run_analysis.R script requires that the following packages be installed: plyr, dplyr, reshape2

## Loading the tidy data file
The file can be read into R with the following command:

read.table("resultTidy.txt",header=TRUE)

## The run_analysis.R script
### Overview
The source data is divided into two separate sets, the train data and the test data.  The subjects in each of these sets are mutually exclusive such that the datasets must be combined to have measures for all subjects.  

Also, for each of the train and test datasets there are three data files, one with the measures, one with the subject for each row in the measure, and one with the activity that measure was taken for.  The three data files must be combined before merging the train and test datasets.

The features that we are interested in are a subset of the features available in the measures data files.

### Running the script
The run_analysis.R script requires no parameters so can be executed directly:

source(run_analysis.R)

### Steps
The run_analysis.R script performs the following steps

1. Load the required packages
2. Read the files</li>
3. Combine the three test dataset data frames into a single test data frame
4. Combine the three train dataset data frames into a single train data frame
5. Combine the test and train data frames into a new data frame
6. Find those features that only are mean and standard deviation measurements, excluding the measurements that are the mean of a frequency
7. Select only those variables from the combined data frame created in step 5 that correspond to the features found in step 6, creating a new data frame
8. Clean up the variable names from the features selected in step 6 such that parentheses are removed and dashes are replaced by underscores
9. Apply the cleaned variable names to the data frame created in step 7
10. Join the new data frame to the activity labels so that there is a descriptive label of the activity for each record
11. Create a new data frame by taking the mean of each feature variable by the Subject and Activity variables.
12. Write the tidy dataset to the resultTidy.txt file
