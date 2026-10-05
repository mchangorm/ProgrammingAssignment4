# Getting and Cleaning Data Course Project

## Purpose

- The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

- The submitted data set is tidy. 

- The Github repo contains the required scripts.

- GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

- The README that explains the analysis files is clear and understandable.

- The work submitted for this project is the work of the student who submitted it.


# Course Work

- You should create one R script called run_analysis.R that does the following. 

- Merges the training and the test sets to create one data set.

- Extracts only the measurements on the mean and standard deviation for each measurement. 

- Uses descriptive activity names to name the activities in the data set

- Appropriately labels the data set with descriptive variable names. 

- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Explanation of files

- readme.md - this file
- codebook.md - an extraneous file.
- run_analysis.R - the file containing the R code
- tidydata-orig.txt - the merged result with descriptive activity names and variable names that only pertain to the mean and standard deviation for each measurement
- tidydata-long.txt - the merged result after passed through the melt function from data.tables. This converts wide format data into long format data which is required to calculate the average
- tidydata-summ.txt - the summarised data by activity and subject. This takes the intermmediate tidydata-long.txt data and casts it back into a wide format data using the formula interface (in this case, mean)

