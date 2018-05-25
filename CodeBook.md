# Code Book

This codebook summarizes the data contained in 'courseprojectweek4.txt', a tidy dataset generated as a requirement for the 'Getting and Cleaning Data' course.  


## Raw Data

The raw data for this project came from the UCI Machine Learning Repository. It was collected from the accelerometers from the Samsung Galaxy S smartphone.

The data can be downloaded via (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The full description of the experiments can be read via (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

 
### Description
 
 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### Files

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


### Notes

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.  


## Tidy Data

Tiday data is contained in 'courseprojectweek4.txt'.

### Dimensions

There are a total of 6 observations and  72olumns, with each row representing mean and standard deviation measurements for each subject and activity.

### Identifiers

There are two Identifiers in the dataset contained in 2 columns:

* **act_id** - corresponds to a specific activity with mapping as outlined below:

    + 1 - WALKING
    + 2 - WALKING_UPSTAIRS
    + 3 - WALKING_DOWNSTAIRS
    + 4 - SITTING
    + 5 - STANDING
    + 6 - LAYING
    
* **subj_id** - corresponds to subject from whom data was tested; Subject column is numbered from 1 to 30. 

### Measurements

Following measurements were taken by smartphone and are available for each subject and activity:

- "tBodyAcc-mean()-X"                   
- "tBodyAcc-mean()-Y"                   
- "tBodyAcc-mean()-Z"                   
- "tBodyAcc-std()-X"                    
- "tBodyAcc-std()-Y"                    
- "tBodyAcc-std()-Z"                    
- "tGravityAcc-mean()-X"                
- "tGravityAcc-mean()-Y"                
- "tGravityAcc-mean()-Z"                
- "tGravityAcc-std()-X"                 
- "tGravityAcc-std()-Y"                 
- "tGravityAcc-std()-Z"                 
- "tBodyAccJerk-mean()-X"               
- "tBodyAccJerk-mean()-Y"               
- "tBodyAccJerk-mean()-Z"               
- "tBodyAccJerk-std()-X"                
- "tBodyAccJerk-std()-Y"                
- "tBodyAccJerk-std()-Z"                
- "tBodyGyro-mean()-X"                  
- "tBodyGyro-mean()-Y"                  
- "tBodyGyro-mean()-Z"                  
- "tBodyGyro-std()-X"                   
- "tBodyGyro-std()-Y"                   
- "tBodyGyro-std()-Z"                   
- "tBodyGyroJerk-mean()-X"              
- "tBodyGyroJerk-mean()-Y"              
- "tBodyGyroJerk-mean()-Z"              
- "tBodyGyroJerk-std()-X"               
- "tBodyGyroJerk-std()-Y"               
- "tBodyGyroJerk-std()-Z"               
- "tBodyAccMag-mean()"                  
- "tBodyAccMag-std()"                   
- "tGravityAccMag-mean()"               
- "tGravityAccMag-std()"                
- "tBodyAccJerkMag-mean()"              
- "tBodyAccJerkMag-std()"               
- "tBodyGyroMag-mean()"                 
- "tBodyGyroMag-std()"                  
- "tBodyGyroJerkMag-mean()"             
- "tBodyGyroJerkMag-std()"              
- "fBodyAcc-mean()-X"                   
- "fBodyAcc-mean()-Y"                   
- "fBodyAcc-mean()-Z"                   
- "fBodyAcc-std()-X"                    
- "fBodyAcc-std()-Y"                    
- "fBodyAcc-std()-Z"                    
- "fBodyAccJerk-mean()-X"               
- "fBodyAccJerk-mean()-Y"               
- "fBodyAccJerk-mean()-Z"               
- "fBodyAccJerk-std()-X"                
- "fBodyAccJerk-std()-Y"                
- "fBodyAccJerk-std()-Z"                
- "fBodyGyro-mean()-X"                  
- "fBodyGyro-mean()-Y"                  
- "fBodyGyro-mean()-Z"                  
- "fBodyGyro-std()-X"                   
- "fBodyGyro-std()-Y"                   
- "fBodyGyro-std()-Z"                   
- "fBodyAccMag-mean()"                  
- "fBodyAccMag-std()"                   
- "fBodyBodyAccJerkMag-mean()"          
- "fBodyBodyAccJerkMag-std()"           
- "fBodyBodyGyroMag-mean()"             
- "fBodyBodyGyroMag-std()"              
- "fBodyBodyGyroJerkMag-mean()"         
- "fBodyBodyGyroJerkMag-std()"          
- "angle(tBodyAccMean,gravity)"         
- "angle(tBodyAccJerkMean),gravityMean)"
- "angle(tBodyGyroMean,gravityMean)"    
- "angle(tBodyGyroJerkMean,gravityMean)"

### Transformation

The following steps were made to transform the raw data to tidy data. These steps are executed in the R script run_analysis.R:

  1. Merge the training and the test sets to create one data set.
  2. Extract only the measurements on the mean and standard deviation for each measurement.
  3. Use descriptive activity names to name the activities in the data set
  4. Appropriately label the data set with descriptive variable names.
  5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.