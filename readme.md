This project aims to create a tidy set from data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In the run_analysis.R file, the following steps were undertaken to clean the raw dataset and transform it into a tidy one:

  1. Merge the training and the test sets to create one data set.
  2. Extract only the measurements on the mean and standard deviation for each measurement.
  3. Use descriptive activity names to name the activities in the data set
  4. Appropriately label the data set with descriptive variable names.
  5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
  
Attached files include:

courseprojectweek4.txt - contains the final output of R file
CodeBook.md - describes the variables, the data, and transformations performed to clean up the data