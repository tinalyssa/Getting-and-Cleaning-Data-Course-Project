#This R script will do the following:

#1 Merges the training and the test sets to create one data set.
#2 Extracts only the measurements on the mean and standard deviation for each measurement.
#3 Uses descriptive activity names to name the activities in the data set
#4 Appropriately labels the data set with descriptive variable names.
#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#1 Merges the training and the test sets to create one data set.

library(dplyr)

setwd('C:/Users/User/Documents/UCI HAR Dataset')

ActivityData <- read.table('./activity_labels.txt', header = FALSE,
                       col.names = c("act_id", "act_name"))
FeaturesData <- read.table('./features.txt', header = FALSE)

  #store test data columns then merge

y_test <- read.table('./test/y_test.txt', header = FALSE, col.names = "act_id")
x_test <- read.table('./test/x_test.txt', header = FALSE) 
  colnames(x_test) = FeaturesData[,2]
subject_test <- read.table('./test/subject_test.txt', header = FALSE, col.names = "subj_id")

TestDataset <- cbind(y_test, subject_test, x_test)

  #store train data columns then merge

y_train <- read.table('./train/y_train.txt', header = FALSE, col.names = "act_id")
x_train <- read.table('./train/x_train.txt', header = FALSE)
  colnames(x_train) = FeaturesData[,2]
subject_train <- read.table('./train/subject_train.txt', header = FALSE, col.names = "subj_id")

TrainDataset <- cbind(y_train, subject_train, x_train)

  #merge train dataset and test dataset into one table

Dataset <- rbind(TestDataset, TrainDataset)

column_name <- colnames(Dataset)

#2 Extracts only the measurements on the mean and standard deviation for each measurement.

  #find all columns with mean and std
MeanStd <- (grepl("act..",column_name) | grepl("subj..",column_name) | grepl("mean..",column_name) &
              !grepl("meanFreq..",column_name) | grepl("std..",column_name))
  #filter Dataset according to Dataset_meanstd to show columns with mean, std, activity, and subject only
Dataset <- Dataset[MeanStd==TRUE]

#3 Uses descriptive activity names to name the activities in the data set

  #merge ActivityData containing mapping of Activity id and name with Dataset
Dataset_Activity <- full_join(ActivityData, Dataset, by = "act_id")

#4 Appropriately labels the data set with descriptive variable names.
  #done in MeanStd variable

#5 From the data set in step 4, creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject.

  #group accdg to activity and subject
Dataset_Group <- group_by(Dataset_Activity, act_name, subj_id)
  #get mean of each group
Dataset_Mean <- summarise_all(Dataset_Group, mean) %>% select(-one_of("act_id"))

write.table(Dataset_Mean, file = "./courseprojectweek4.txt", row.name = FALSE, col.names = TRUE)

