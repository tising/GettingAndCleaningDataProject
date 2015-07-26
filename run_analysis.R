
#Load required packages
library(plyr)
library(dplyr)
library(reshape2)

#Read in the features file.  These will be used as the column headers 
# of the x_train.txt and y_train.txt files
features <- read.table("features.txt")

#Read in the activity_labels.txt text file and apply column names
activityLabels <- read.table("activity_labels.txt")
names(activityLabels) <- c("Activity_ID","Activity")

#Load the test data sets and apply column names to the subject 
# (subject_text.txt) and activity (y_test.txt) datasets
subject_test <- read.table("subject_test.txt")
names(subject_test) <- c("Subject")
y_test <- read.table("y_test.txt")
names(y_test) <- c("Activity_ID")
x_test <- read.table("x_test.txt")

#Combine the three resultant test data frames into a single test 
# data frame
testdf <- cbind(subject_test, y_test, x_test);

#Load the train data sets and apply column names to the subject 
# (subject_train.txt) and activity (y_train.txt) datasets
subject_train <- read.table("subject_train.txt")
names(subject_train) <- c("Subject")
y_train <- read.table("y_train.txt")
names(y_train) <- c("Activity_ID")
x_train <- read.table("x_train.txt")

#Combine the three resultant train data frames into a single 
# train data frame
traindf <- cbind(subject_train, y_train, x_train);

#Merge the train data frame with the test data frame
fulldf <- rbind(testdf,traindf)


#Find those features that only are mean and standard deviation 
# measurements, excluding the measurements that are 
# the mean of a frequency
selectedFeatures <- filter(features, grepl("mean|std",V2) & !grepl("meanFreq",V2))


#Select only those variables from the full data frame that are 
# desired in the output
meanStddf <- select(fulldf,1,2,selectedFeatures$V1+2)

#Clean up the variable names from the source such that parentheses 
# are removed and dashes are replaced by underscores
featureNames <- gsub("-std\\(\\)-","_std_",selectedFeatures$V2)
featureNames <- gsub("-std\\(\\)","_std",featureNames)
featureNames <- gsub("-mean\\(\\)-","_mean_",featureNames)
featureNames <- gsub("-mean\\(\\)","_mean",featureNames)

#Apply the clean variable names to the data frame
columnNames <- c(c("Subject","Activity_ID"),featureNames)
names(meanStddf) <- columnNames

#Join the main data frame to the activity labels
meanStddf <- join(meanStddf,activityLabels)

#Create a dataset that is the mean of each measure by Subject and Activity
meanStdMelt <- melt(meanStddf, id=c("Subject","Activity_ID","Activity"),measure.vars=featureNames)
result <- dcast(meanStdMelt, Subject + Activity ~ variable, mean)

resultNames <- names(result)
#Update the measure variables to indicate that they are a mean
names(result) <- c(resultNames[1:2],paste("meanOf_",resultNames[3:length(resultNames)],sep=""))

#Output the tidy data frame to file
write.table(result, "resultTidy.txt", col.names=TRUE, row.name=FALSE)