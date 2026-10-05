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
|      Original Variable      |      Renamed Variable     |                                                                         Description                                                                         |
|:---------------------------:|:-------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------:|
| tBodyAcc-mean()-X           | timeBodyAccMeanX          | Mean value of the body acceleration signal measured in the indicated axis.                                                                                  |
| tBodyAcc-mean()-Y           | timeBodyAccMeanY          | Mean value of the body acceleration signal measured in the indicated axis.                                                                                  |
| tBodyAcc-mean()-Z           | timeBodyAccMeanZ          | Mean value of the body acceleration signal measured in the indicated axis.                                                                                  |
| tGravityAcc-mean()-X        | timeGravityAccMeanX       | Mean value of the gravity acceleration signal measured in the indicated axis.                                                                               |
| tGravityAcc-mean()-Y        | timeGravityAccMeanY       | Mean value of the gravity acceleration signal measured in the indicated axis.                                                                               |
| tGravityAcc-mean()-Z        | timeGravityAccMeanZ       | Mean value of the gravity acceleration signal measured in the indicated axis.                                                                               |
| tBodyAccJerk-mean()-X       | timeBodyAccJerkMeanX      | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyAccJerk-mean()-Y       | timeBodyAccJerkMeanY      | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyAccJerk-mean()-Z       | timeBodyAccJerkMeanZ      | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyGyro-mean()-X          | timeBodyGyroMeanX         | Mean value of the angular velocity in the indicated axis.                                                                                                   |
| tBodyGyro-mean()-Y          | timeBodyGyroMeanY         | Mean value of the angular velocity in the indicated axis.                                                                                                   |
| tBodyGyro-mean()-Z          | timeBodyGyroMeanZ         | Mean value of the angular velocity in the indicated axis.                                                                                                   |
| tBodyGyroJerk-mean()-X      | timeBodyGyroJerkMeanX     | Mean value of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                            |
| tBodyGyroJerk-mean()-Y      | timeBodyGyroJerkMeanY     | Mean value of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                            |
| tBodyGyroJerk-mean()-Z      | timeBodyGyroJerkMeanZ     | Mean value of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                            |
| tBodyAccMag-mean()          | timeBodyAccMagMean        | Mean value of the magnitude of the body acceleration signal measured.                                                                                       |
| tGravityAccMag-mean()       | timeGravityAccMagMean     | Mean value of the magnitude of the gravity acceleration.                                                                                                    |
| tBodyAccJerkMag-mean()      | timeBodyAccJerkMagMean    | Mean value of the magnitude of the body acceleration signal derivation used to obtain jerk signals.                                                         |
| tBodyGyroMag-mean()         | timeBodyGyroMagMean       | Mean value of the magnitude of the angular velocity.                                                                                                        |
| tBodyGyroJerkMag-mean()     | timeBodyGyroJerkMagMean   | Mean value of the magnitude of the angular velocity derivation used to obtain jerk signals.                                                                 |
| fBodyAcc-mean()-X           | freqBodyAccMeanX          | Mean value of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                                       |
| fBodyAcc-mean()-Y           | freqBodyAccMeanY          | Mean value of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                                       |
| fBodyAcc-mean()-Z           | freqBodyAccMeanZ          | Mean value of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                                       |
| fBodyAccJerk-mean()-X       | freqBodyAccJerkMeanX      | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied.         |
| fBodyAccJerk-mean()-Y       | freqBodyAccJerkMeanY      | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied.         |
| fBodyAccJerk-mean()-Z       | freqBodyAccJerkMeanZ      | Mean value of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied.         |
| fBodyGyro-mean()-X          | freqBodyGyroMeanX         | Mean value of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                        |
| fBodyGyro-mean()-Y          | freqBodyGyroMeanY         | Mean value of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                        |
| fBodyGyro-mean()-Z          | freqBodyGyroMeanZ         | Mean value of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                        |
| fBodyAccMag-mean()          | freqBodyAccMagMean        | Mean value of the magnitude of the body acceleration signal measured where a Fast Fourier Transform was applied.                                            |
| fBodyBodyAccJerkMag-mean()  | freqBodyAccJerkMagMean    | Mean value of the magnitude of the body acceleration signal derivation used to obtain jerk signals where a Fast Fourier Transform was applied.              |
| fBodyBodyGyroMag-mean()     | freqBodyGyroMagMean       | Mean value of the magnitude of the angular velocity derivation used to obtain jerk signals where a Fast Fourier Transform was applied.                      |
| fBodyBodyGyroJerkMag-mean() | freqBodyGyroJerkMagMean   | Mean value of the magnitude of the angular velocity derivation used to obtain jerk signals where a Fast Fourier Transform was applied.                      |
| tBodyAcc-std()-X            | timeBodyAccStdDevX        | Standard deviation of the body acceleration signal measured in the indicated axis.                                                                          |
| tBodyAcc-std()-Y            | timeBodyAccStdDevY        | Standard deviation of the body acceleration signal measured in the indicated axis.                                                                          |
| tBodyAcc-std()-Z            | timeBodyAccStdDevZ        | Standard deviation of the body acceleration signal measured in the indicated axis.                                                                          |
| tGravityAcc-std()-X         | timeGravityAccStdDevX     | Standard deviation of the gravity acceleration signal measured in the indicated axis.                                                                       |
| tGravityAcc-std()-Y         | timeGravityAccStdDevY     | Standard deviation of the gravity acceleration signal measured in the indicated axis.                                                                       |
| tGravityAcc-std()-Z         | timeGravityAccStdDevZ     | Standard deviation of the gravity acceleration signal measured in the indicated axis.                                                                       |
| tBodyAccJerk-std()-X        | timeBodyAccJerkStdDevX    | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                            |
| tBodyAccJerk-std()-Y        | timeBodyAccJerkStdDevY    | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                            |
| tBodyAccJerk-std()-Z        | timeBodyAccJerkStdDevZ    | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis.                                            |
| tBodyGyro-std()-X           | timeBodyGyroStdDevX       | Standard deviation of the angular velocity in the indicated axis.                                                                                           |
| tBodyGyro-std()-Y           | timeBodyGyroStdDevY       | Standard deviation of the angular velocity in the indicated axis.                                                                                           |
| tBodyGyro-std()-Z           | timeBodyGyroStdDevZ       | Standard deviation of the angular velocity in the indicated axis.                                                                                           |
| tBodyGyroJerk-std()-X       | timeBodyGyroJerkStdDevX   | Standard deviation of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyGyroJerk-std()-Y       | timeBodyGyroJerkStdDevY   | Standard deviation of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyGyroJerk-std()-Z       | timeBodyGyroJerkStdDevZ   | Standard deviation of the angular velocity derivation used to obtain jerk signals in the indicated axis.                                                    |
| tBodyAccMag-std()           | timeBodyAccMagStdDev      | Standard deviation of the magnitude of the body acceleration signal measured.                                                                               |
| tGravityAccMag-std()        | timeGravityAccMagStdDev   | Standard deviation of the magnitude of the gravity acceleration.                                                                                            |
| tBodyAccJerkMag-std()       | timeBodyAccJerkMagStdDev  | Standard deviation of the magnitude of the body acceleration signal derivation used to obtain jerk signals.                                                 |
| tBodyGyroMag-std()          | timeBodyGyroMagStdDev     | Standard deviation of the magnitude of the angular velocity.                                                                                                |
| tBodyGyroJerkMag-std()      | timeBodyGyroJerkMagStdDev | Standard deviation of the magnitude of the angular velocity derivation used to obtain jerk signals.                                                         |
| fBodyAcc-std()-X            | freqBodyAccStdDevX        | Standard deviation of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                               |
| fBodyAcc-std()-Y            | freqBodyAccStdDevY        | Standard deviation of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                               |
| fBodyAcc-std()-Z            | freqBodyAccStdDevZ        | Standard deviation of the body acceleration signal measured in the indicated axis where a Fast Fourier Transform was applied.                               |
| fBodyAccJerk-std()-X        | freqBodyAccJerkStdDevX    | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied. |
| fBodyAccJerk-std()-Y        | freqBodyAccJerkStdDevY    | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied. |
| fBodyAccJerk-std()-Z        | freqBodyAccJerkStdDevZ    | Standard deviation of the body acceleration signal derivation used to obtain jerk signals in the indicated axis where a Fast Fourier Transform was applied. |
| fBodyGyro-std()-X           | freqBodyGyroStdDevX       | Standard deviation of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                |
| fBodyGyro-std()-Y           | freqBodyGyroStdDevY       | Standard deviation of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                |
| fBodyGyro-std()-Z           | freqBodyGyroStdDevZ       | Standard deviation of the angular velocity in the indicated axis where a Fast Fourier Transform was applied.                                                |
| fBodyAccMag-std()           | freqBodyAccMagStdDev      | Standard deviation of the magnitude of the body acceleration signal measured where a Fast Fourier Transform was applied.                                    |
| fBodyBodyAccJerkMag-std()   | freqBodyAccJerkMagStdDev  | Standard deviation of the magnitude of the body acceleration signal derivation used to obtain jerk signals where a Fast Fourier Transform was applied.      |
| fBodyBodyGyroMag-std()      | freqBodyGyroMagStdDev     | Standard deviation of the magnitude of the angular velocity where a Fast Fourier Transform was applied.                                                     |
| fBodyBodyGyroJerkMag-std()  | freqBodyGyroJerkMagStdDev | Standard deviation of the magnitude of the angular velocity derivation used to obtain jerk signals where a Fast Fourier Transform was applied.              |