# Getting and Cleaning Data Project

## Experiment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

# Dataset Information

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Methodology

- Download the file
- Extract out features 
- Load train dataset and make sense of it
- Take out unneeded measurements and rename columns with actual column names from features.txt
- Repeat with test dataset
- Merge both train and test datasets together
- Perform melt and dcast functions to aggregate the data


### Variables 

***
|          Variable           | Description                                                                                                                                                 |
| :-------------------------: | :---------------------------------------------------------------------------------------------------------------------------------------------------------: |
| tBodyAcc-mean()-X           | Mean value of the body acceleration signal measured in the indicated axis.                                                                                  |
| tBodyAcc-mean()-Y           | Mean value of the body acceleration signal measured in the indicated axis.                                                                                  |
| tBodyAcc-mean()-Z           | Mean value of the body acceleration signal measured in the indicated axis.                                                                                  |
| tGravityAcc-mean()-X        | Mean value of the gravity acceleration signal measured in the indicated axis.                                                                               |
| tGravityAcc-mean()-Y        | Mean value of the gravity acceleration signal measured in the indicated axis.                                                                               |
| tGravityAcc-mean()-Z        | Mean value of the gravity acceleration signal measured in the indicated axis.                                                                               |
| tBodyAccJerk-mean()-X       | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyAccJerk-mean()-Y       | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyAccJerk-mean()-Z       | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyGyro-mean()-X          | Mean value of the angular velocity in the indicated axis.                                                                                                   |
| tBodyGyro-mean()-Y          | Mean value of the angular velocity in the indicated axis.                                                                                                   |
| tBodyGyro-mean()-Z          | Mean value of the angular velocity in the indicated axis.                                                                                                   |
| tBodyGyroJerk-mean()-X      | Mean value of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                            |
| tBodyGyroJerk-mean()-Y      | Mean value of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                            |
| tBodyGyroJerk-mean()-Z      | Mean value of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                            |
| tBodyAccMag-mean()          | Mean value of the magnitude of the body acceleration signal measured.                                                                                       |
| tGravityAccMag-mean()       | Mean value of the magnitude of the gravity acceleration.                                                                                                    |
| tBodyAccJerkMag-mean()      | Mean value of the magnitude of the body acceleration signal derivation used to obtain jerk signals.                                                         |
| tBodyGyroMag-mean()         | Mean value of the magnitude of the angular velocity.                                                                                                        |
| tBodyGyroJerkMag-mean()     | Mean value of the magnitude of the angular velocity derivation used to obtain jerk signals.                                                                 |
| fBodyAcc-mean()-X           | Mean value of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                                       |
| fBodyAcc-mean()-Y           | Mean value of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                                       |
| fBodyAcc-mean()-Z           | Mean value of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                                       |
| fBodyAccJerk-mean()-X       | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied.         |
| fBodyAccJerk-mean()-Y       | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied.         |
| fBodyAccJerk-mean()-Z       | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied.         |
| fBodyGyro-mean()-X          | Mean value of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                        |
| fBodyGyro-mean()-Y          | Mean value of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                        |
| fBodyGyro-mean()-Z          | Mean value of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                        |
| fBodyAccMag-mean()          | Mean value of the magnitude of the body acceleration signal measured where a Fast Fourier Transform was applied.                                            |
| fBodyBodyAccJerkMag-mean()  | Mean value of the magnitude of the body acceleration signal derivation used to obtain jerk signals where a Fast Fourier Transform was applied.              |
| fBodyBodyGyroMag-mean()     | Mean value of the magnitude of the angular velocity derivation used to obtain jerk signals where a Fast Fourier Transform was applied.                      |
| fBodyBodyGyroJerkMag-mean() | Mean value of the magnitude of the angular velocity derivation used to obtain jerk signals where a Fast Fourier Transform was applied.                      |
| tBodyAcc-std()-X            | Standard deviation of the body acceleration signal measured in the indicated axis.                                                                          |
| tBodyAcc-std()-Y            | Standard deviation of the body acceleration signal measured in the indicated axis.                                                                          |
| tBodyAcc-std()-Z            | Standard deviation of the body acceleration signal measured in the indicated axis.                                                                          |
| tGravityAcc-std()-X         | Standard deviation of the gravity acceleration signal measured in the indicated axis.                                                                       |
| tGravityAcc-std()-Y         | Standard deviation of the gravity acceleration signal measured in the indicated axis.                                                                       |
| tGravityAcc-std()-Z         | Standard deviation of the gravity acceleration signal measured in the indicated axis.                                                                       |
| tBodyAccJerk-std()-X        | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                            |
| tBodyAccJerk-std()-Y        | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                            |
| tBodyAccJerk-std()-Z        | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                            |
| tBodyGyro-std()-X           | Standard deviation of the angular velocity in the indicated axis.                                                                                           |
| tBodyGyro-std()-Y           | Standard deviation of the angular velocity in the indicated axis.                                                                                           |
| tBodyGyro-std()-Z           | Standard deviation of the angular velocity in the indicated axis.                                                                                           |
| tBodyGyroJerk-std()-X       | Standard deviation of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyGyroJerk-std()-Y       | Standard deviation of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyGyroJerk-std()-Z       | Standard deviation of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyAccMag-std()           | Standard deviation of the magnitude of the body acceleration signal measured.                                                                               |
| tGravityAccMag-std()        | Standard deviation of the magnitude of the gravity acceleration.                                                                                            |
| tBodyAccJerkMag-std()       | Standard deviation of the magnitude of the body acceleration signal derivation used to obtain jerk signals.                                                 |
| tBodyGyroMag-std()          | Standard deviation of the magnitude of the angular velocity.                                                                                                |
| tBodyGyroJerkMag-std()      | Standard deviation of the magnitude of the angular velocity derivation used to obtain jerk signals.                                                         |
| fBodyAcc-std()-X            | Standard deviation of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                               |
| fBodyAcc-std()-Y            | Standard deviation of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                               |
| fBodyAcc-std()-Z            | Standard deviation of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                               |
| fBodyAccJerk-std()-X        | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied. |
| fBodyAccJerk-std()-Y        | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied. |
| fBodyAccJerk-std()-Z        | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied. |
| fBodyGyro-std()-X           | Standard deviation of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                |
| fBodyGyro-std()-Y           | Standard deviation of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                |
| fBodyGyro-std()-Z           | Standard deviation of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                |
| fBodyAccMag-std()           | Standard deviation of the magnitude of the body acceleration signal measured where a Fast Fourier Transform was applied.                                    |
| fBodyBodyAccJerkMag-std()   | Standard deviation of the magnitude of the body acceleration signal derivation used to obtain jerk signals where a Fast Fourier Transform was applied.      |
| fBodyBodyGyroMag-std()      | Standard deviation of the magnitude of the angular velocity where a Fast Fourier Transform was applied.                                                     |
| fBodyBodyGyroJerkMag-std()  | Standard deviation of the magnitude of the angular velocity derivation used to obtain jerk signals where a Fast Fourier Transform was applied.              |