# Getting and Cleaning Data Course Project

This project aims to create a tidy set from data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Contained in this repository are three files:

- **CodeBook.md** - a code book that describes the raw data, variables, and steps undertaken to the raw data to come up with the tidy data.
- **run_analysis.R** - R script performed on the raw data.The following steps were done to clean the raw dataset and transform it into a tidy one:
      1. Merge the training and the test sets to create one data set.
      2. Extract only the measurements on the mean and standard deviation for each measurement.
      3. Use descriptive activity names to name the activities in the data set
      4. Appropriately label the data set with descriptive variable names.
      5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
      6. Save tidy data into a txt file called 'courseprojectweek4'.

- **courseprojectweek4.txt** - contains the tidy data and final output of the R file