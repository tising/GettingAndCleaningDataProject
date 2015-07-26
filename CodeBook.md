---
title: "CodeBook"
author: Ted Ising
output: html_document
---

##Study Design
The goal of this study was to take the raw data from the 
Human Activity Recognition Using Smartphones study (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and create a tidy dataset consisting of the average of each measure from the raw data where the raw measure is itself a mean or standard deviation. The variables in the resultant dataset are the averages for each activity and each subject. 

The R script created to output the tidy dataset is named run_analysis.R

##Summary Choices
Only those measurements in the source data that are the mean and standard deviation measurements were kept in the working data.  The selection was based on the variable having the string "std" or "mean" in the variable name, excluding those variables that include the string "meanfreq".  Based on the requirements of the project, it was determined that the mean of the frequency variables from the source data were not desired in the output data.

##Code book
The following are the variables contained in the resultTidy.txt file.  As the units of measure in the raw data were normalized over the closed interval [-1,+1], there are no units of measure for the variables in the subsequent tidy dataset created by the run_analysis.R script.


Column |Variable Name   |Definition
-------|----------------|-------------------
1      |Subject|Identifier of the subject who carried out the experiement
2|Activity|Label identifying the activity the subject was performing when the measurement was taken.
3|meanOf_tBodyAcc_mean_X|Mean of the mean body acceleration on the X-axis; The mean of the tBodyAcc-mean()-X variable in the raw data for the Subject and Activity
4|meanOf_tBodyAcc_mean_Y|Mean of the mean body acceleration on the Y-axis; The mean of the tBodyAcc-mean()-Y variable in the raw data for the Subject and Activity
5|meanOf_tBodyAcc_mean_Z|Mean of the mean body acceleration on the Z-axis; The mean of the tBodyAcc-mean()-Z variable in the raw data for the Subject and Activity
6|meanOf_tBodyAcc_std_X|Mean of the standard deviation of the body acceleration on the X-axis; The mean of the tBodyAcc-std()-X variable in the raw data for the Subject and Activity
7|meanOf_tBodyAcc_std_Y|Mean of the standard deviation of the body acceleration on the Y-axis; The mean of the tBodyAcc-std()-Y variable in the raw data for the Subject and Activity
8|meanOf_tBodyAcc_std_Z|Mean of the standard deviation of the body acceleration on the Z-axis; The mean of the tBodyAcc-std()-Z variable in the raw data for the Subject and Activity
9|meanOf_tGravityAcc_mean_X|Mean of the mean gravity acceleration on the X-axis; The mean of the tGravityAcc-mean()-X variable in the raw data for the Subject and Activity
10|meanOf_tGravityAcc_mean_Y|Mean of the mean gravity acceleration on the Y-axis; The mean of the tGravityAcc-mean()-Y variable in the raw data for the Subject and Activity
11|meanOf_tGravityAcc_mean_Z|Mean of the mean gravity acceleration on the Z-axis; The mean of the tGravityAcc-mean()-Z variable in the raw data for the Subject and Activity
12|meanOf_tGravityAcc_std_X|Mean of the standard deviation of the gravity acceleration on the X-axis; The mean of the tGravityAcc-std()-X variable in the raw data for the Subject and Activity
13|meanOf_tGravityAcc_std_Y|Mean of the standard deviation of the gravity acceleration on the Y-axis; The mean of the tGravityAcc-std()-Y variable in the raw data for the Subject and Activity
14|meanOf_tGravityAcc_std_Z|Mean of the standard deviation of the gravity acceleration on the Z-axis; The mean of the tGravityAcc-std()-Z variable in the raw data for the Subject and Activity
15|meanOf_tBodyAccJerk_mean_X|Mean of the mean body linear acceleration jerk signals on the X-axis; The mean of the tBodyAccJerk-mean()-X variable in the raw data for the Subject and Activity
16|meanOf_tBodyAccJerk_mean_Y|Mean of the mean body linear acceleration jerk signals on the Y-axis; The mean of the tBodyAccJerk-mean()-Y variable in the raw data for the Subject and Activity
17|meanOf_tBodyAccJerk_mean_Z|Mean of the mean body linear acceleration jerk signals on the Z-axis; The mean of the tBodyAccJerk-mean()-Z variable in the raw data for the Subject and Activity
18|meanOf_tBodyAccJerk_std_X|Mean of the standard deviation of the body linear acceleration jerk signals on the X-axis; The mean of the tBodyAccJerk-std()-X variable in the raw data for the Subject and Activity
19|meanOf_tBodyAccJerk_std_Y|Mean of the standard deviation of the body linear acceleration jerk signals on the Y-axis; The mean of the tBodyAccJerk-std()-Y variable in the raw data for the Subject and Activity
20|meanOf_tBodyAccJerk_std_Z|Mean of the standard deviation of the body linear acceleration jerk signals on the Z-axis; The mean of the tBodyAccJerk-std()-Z variable in the raw data for the Subject and Activity
21|meanOf_tBodyGyro_mean_X|Mean of the mean body angular velocity on the X-axis; The mean of the tBodyGyro-mean()-X variable in the raw data for the Subject and Activity
22|meanOf_tBodyGyro_mean_Y|Mean of the mean body angular velocity on the Y-axis; The mean of the tBodyGyro-mean()-Y variable in the raw data for the Subject and Activity
23|meanOf_tBodyGyro_mean_Z|Mean of the mean body angular velocity jerk signals on the Z-axis; The mean of the tBodyGyro-mean()-Z variable in the raw data for the Subject and Activity
24|meanOf_tBodyGyro_std_X|Mean of the standard deviation of the body angular velocity on the X-axis; The mean of the tBodyGyro-std()-X variable in the raw data for the Subject and Activity
25|meanOf_tBodyGyro_std_Y|Mean of the standard deviation of the body angular velocity on the Y-axis; The mean of the tBodyGyro-std()-Y variable in the raw data for the Subject and Activity
26|meanOf_tBodyGyro_std_Z|Mean of the standard deviation of the body angular velocity on the Z-axis; The mean of the tBodyGyro-std()-Z variable in the raw data for the Subject and Activity
27|meanOf_tBodyGyroJerk_mean_X|Mean of the mean body angular velocity jerk signals on the X-axis; The mean of the tBodyGyroJerk-mean()-X variable in the raw data for the Subject and Activity
28|meanOf_tBodyGyroJerk_mean_Y|Mean of the mean body angular velocity jerk signals on the Y-axis; The mean of the tBodyGyroJerk-mean()-Y variable in the raw data for the Subject and Activity
29|meanOf_tBodyGyroJerk_mean_Z|Mean of the mean body angular velocity jerk signals on the Z-axis; The mean of the tBodyGyroJerk-mean()-Z variable in the raw data for the Subject and Activity
30|meanOf_tBodyGyroJerk_std_X|Mean of the standard deviation of the body angular velocity jerk signals on the X-axis; The mean of the tBodyGyroJerk-std()-X variable in the raw data for the Subject and Activity
31|meanOf_tBodyGyroJerk_std_Y|Mean of the standard deviation of the body angular velocity jerk signals on the Y-axis; The mean of the tBodyGyroJerk-std()-Y variable in the raw data for the Subject and Activity
32|meanOf_tBodyGyroJerk_std_Z|Mean of the standard deviation of the body angular velocity jerk signals on the Z-axis; The mean of the tBodyGyroJerk-std()-Z variable in the raw data for the Subject and Activity
33|meanOf_tBodyAccMag_mean|Mean of the mean of the magnitude of the body acceleration three-dimensional signals; The mean of the tBodyAccMag-mean() variable in the raw data for the Subject and Activity
34|meanOf_tBodyAccMag_std|Mean of the standard deviation of the magnitude of the body acceleration three-dimensional signals; The mean of the tBodyAccMag-std() variable in the raw data for the Subject and Activity
35|meanOf_tGravityAccMag_mean|Mean of the mean of the magnitude of the body angular velociy three-dimensional signals; The mean of the tGravityAccMag-mean() variable in the raw data for the Subject and Activity
36|meanOf_tGravityAccMag_std|Mean of the standard deviation of the magnitude of the body angular velocity three-dimensional signals; The mean of the tGravityAccMag-std() variable in the raw data for the Subject and Activity
37|meanOf_tBodyAccJerkMag_mean|Mean of the mean of the magnitued of the body linear acceleration jerk signals; The mean of the tBodyAccJerkMag-mean() variable in the raw data for the Subject and Activity
38|meanOf_tBodyAccJerkMag_std|Mean of the Standard Deviation of the magnitued of the body linear acceleration jerk signals; The mean of the tBodyAccJerkMag-std() variable in the raw data for the Subject and Activity
39|meanOf_tBodyGyroMag_mean|Mean of the mean of the magnitude of the body angular velocity; The mean of the tBodyGyroMag-mean() variable in the raw data for the Subject and Activity
40|meanOf_tBodyGyroMag_std|Mean of the Standard Deviation of the magnitude of the body angular velocity; The mean of the tBodyGyroMag-std() variable in the raw data for the Subject and Activity
41|meanOf_tBodyGyroJerkMag_mean|Mean of the standard deviation of the magnitued of the body angular velocity jerk signal; The mean of the tBodyGyroJerkMag-mean() variable in the raw data for the Subject and Activity
42|meanOf_tBodyGyroJerkMag_std|Mean of the mean of the magnitued of the body angular velocity jerk signal; The mean of the tBodyGyroJerkMag-std() variable in the raw data for the Subject and Activity
43|meanOf_fBodyAcc_mean_X|Mean of the mean body acceleration on the X-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAcc-mean()-X variable in the raw data for the Subject and Activity
44|meanOf_fBodyAcc_mean_Y|Mean of the mean body acceleration on the Y-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAcc-mean()-Y variable in the raw data for the Subject and Activity
45|meanOf_fBodyAcc_mean_Z|Mean of the mean body acceleration on the Z-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAcc-mean()-Z variable in the raw data for the Subject and Activity
46|meanOf_fBodyAcc_std_X|Mean of the standard deviation of the body acceleration on the X-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAcc-std()-X variable in the raw data for the Subject and Activity
47|meanOf_fBodyAcc_std_Y|Mean of the standard deviation of the body acceleration on the Y-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAcc-std()-Y variable in the raw data for the Subject and Activity
48|meanOf_fBodyAcc_std_Z|Mean of the standard deviation of the body acceleration on the Z-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAcc-std()-Z variable in the raw data for the Subject and Activity
49|meanOf_fBodyAccJerk_mean_X|Mean of the mean body linear acceleration jerk signals on the X-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAccJerk-mean()-X variable in the raw data for the Subject and Activity
50|meanOf_fBodyAccJerk_mean_Y|Mean of the mean body linear acceleration jerk signals on the Y-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAccJerk-mean()-Y variable in the raw data for the Subject and Activity
51|meanOf_fBodyAccJerk_mean_Z|Mean of the mean body linear acceleration jerk signals on the Z-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAccJerk-mean()-Z variable in the raw data for the Subject and Activity
52|meanOf_fBodyAccJerk_std_X|Mean of the standard deviation of the body linear acceleration jerk signals on the X-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAccJerk-std()-X variable in the raw data for the Subject and Activity
53|meanOf_fBodyAccJerk_std_Y|Mean of the standard deviation of the body linear acceleration jerk signals on the Y-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAccJerk-std()-Y variable in the raw data for the Subject and Activity
54|meanOf_fBodyAccJerk_std_Z|Mean of the standard deviation of the body linear acceleration jerk signals on the Z-axis using a Fast Fourier Transform (FFT); The mean of the fBodyAccJerk-std()-Z variable in the raw data for the Subject and Activity
55|meanOf_fBodyGyro_mean_X|Mean of the mean body angular velocity on the X-axis using a Fast Fourier Transform (FFT); The mean of the fBodyGyro-mean()-X variable in the raw data for the Subject and Activity
56|meanOf_fBodyGyro_mean_Y|Mean of the mean body angular velocity on the Y-axis using a Fast Fourier Transform (FFT); The mean of the fBodyGyro-mean()-Y variable in the raw data for the Subject and Activity
57|meanOf_fBodyGyro_mean_Z|Mean of the mean body angular velocityon the Z-axis using a Fast Fourier Transform (FFT); The mean of the fBodyGyro-mean()-Z variable in the raw data for the Subject and Activity
58|meanOf_fBodyGyro_std_X|Mean of the standard deviation of the body angular velocity on the X-axis using a Fast Fourier Transform (FFT); The mean of the fBodyGyro-std()-X variable in the raw data for the Subject and Activity
59|meanOf_fBodyGyro_std_Y|Mean of the standard deviation of the body angular velocity on the Y-axis using a Fast Fourier Transform (FFT); The mean of the fBodyGyro-std()-Y variable in the raw data for the Subject and Activity
60|meanOf_fBodyGyro_std_Z|Mean of the standard deviation of the body angular velocity on the Z-axis using a Fast Fourier Transform (FFT); The mean of the fBodyGyro-std()-Z variable in the raw data for the Subject and Activity
61|meanOf_fBodyAccMag_mean|Mean of the mean of the magnitude of the body acceleration three-dimensional signals using a Fast Fourier Transform (FFT); The mean of the fBodyAccMag-mean() variable in the raw data for the Subject and Activity
62|meanOf_fBodyAccMag_std|Mean of the standard deviation of the magnitude of the body acceleration three-dimensional signals using a Fast Fourier Transform (FFT); The mean of the fBodyAccMag-std() variable in the raw data for the Subject and Activity
63|meanOf_fBodyBodyAccJerkMag_mean|Mean of the mean of the magnitued of the body linear acceleration jerk signals using a Fast Fourier Transform (FFT); The mean of the fBodyBodyAccJerkMag-mean() variable in the raw data for the Subject and Activity
64|meanOf_fBodyBodyAccJerkMag_std|Mean of the Standard Deviation of the magnitued of the body linear acceleration jerk signals using a Fast Fourier Transform (FFT); The mean of the fBodyBodyAccJerkMag-std() variable in the raw data for the Subject and Activity
65|meanOf_fBodyBodyGyroMag_mean|Mean of the mean of the magnitude of the body angular velocity using a Fast Fourier Transform (FFT); The mean of the fBodyBodyGyroMag-mean() variable in the raw data for the Subject and Activity
66|meanOf_fBodyBodyGyroMag_std|Mean of the Standard Deviation of the magnitude of the body angular velocity using a Fast Fourier Transform (FFT); The mean of the fBodyBodyGyroMag-std() variable in the raw data for the Subject and Activity
67|meanOf_fBodyBodyGyroJerkMag_mean|Mean of the standard deviation of the magnitued of the body angular velocity jerk signal using a Fast Fourier Transform (FFT); The mean of the fBodyBodyGyroJerkMag-mean() variable in the raw data for the Subject and Activity
68|meanOf_fBodyBodyGyroJerkMag_std|Mean of the mean of the magnitued of the body angular velocity jerk signal using a Fast Fourier Transform (FFT); The mean of the fBodyBodyGyroJerkMag-std() variable in the raw data for the Subject and Activity
