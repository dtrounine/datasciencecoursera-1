Code Book
===================

## The Raw data

Human Activity Recognition Using Smartphones Data Set

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Check the README.txt file for further details about this dataset.

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## The Tidy Data

|    | Column Name                       |Description|
|----|-----------------------------------|----|
| 1  | activities                        |activities type|
| 2  | subject                           |subject number|
| 3  | tBodyAccMeanX                     |time domain signals body acceleration mean x-axis|
| 4  | tBodyAccMeanY                     |time domain signals body acceleration mean y-axis|
| 5  | tBodyAccMeanZ                     |time domain signals body acceleration mean z-axis |
| 6  | tGravityAccMeanX                  |time domain signals gravity acceleration mean x-axis |
| 7  | tGravityAccMeanY                  |time domain signals gravity acceleration mean y-axis |
| 8  | tGravityAccMeanZ                  |time domain signals gravity acceleration mean z-axis |
| 9  | tBodyAccJerkMeanX                 |time domain signals body acceleration Jerk signals mean x-axis |
| 10 | tBodyAccJerkMeanY                 |time domain signals body acceleration Jerk signals mean y-axis |
| 11 | tBodyAccJerkMeanZ                 |time domain signals body acceleration Jerk signals mean z-axis |
| 12 | tBodyGyroMeanX                    |time domain signals body gyroscope mean x-axis |
| 13 | tBodyGyroMeanY                    |time domain signals body gyroscope mean y-axis |
| 14 | tBodyGyroMeanZ                    |time domain signals body gyroscope mean z-axis |
| 15 | tBodyGyroJerkMeanX                |time domain signals body gyroscope Jerk signals mean x-axis |
| 16 | tBodyGyroJerkMeanY                |time domain signals body gyroscope Jerk signals mean y-axis |
| 17 | tBodyGyroJerkMeanZ                |time domain signals body gyroscope Jerk signals mean z-axis |
| 18 | tBodyAccMagMean                   |time domain signals body acceleration magnitude mean|
| 19 | tGravityAccMagMean                |time domain signals gravity acceleration magnitude mean |
| 20 | tBodyAccJerkMagMean               |time domain signals body acceleration Jerk signals magnitude mean |
| 21 | tBodyGyroMagMean                  |time domain signals body gyroscope magnitude mean |
| 22 | tBodyGyroJerkMagMean              |time domain signals body gyroscope mean Jerk signals magnitude mean |
| 23 | fBodyAccMeanX                     |Fast Fourier Transform (FFT) body acceleration mean x-axis||
| 24 | fBodyAccMeanY                     |Fast Fourier Transform (FFT) body acceleration mean y-axis|
| 25 | fBodyAccMeanZ                     |Fast Fourier Transform (FFT) body acceleration mean z-axis |
| 26 | fBodyAccMeanFreqX                 |Fast Fourier Transform (FFT) gravity acceleration mean frequency x-axis |
| 27 | fBodyAccMeanFreqY                 |Fast Fourier Transform (FFT) gravity acceleration mean frequency y-axis |
| 28 | fBodyAccMeanFreqZ                 |Fast Fourier Transform (FFT) gravity acceleration mean frequency x-axis |
| 29 | fBodyAccJerkMeanX                 |Fast Fourier Transform (FFT) body acceleration Jerk signals mean x-axis |
| 30 | fBodyAccJerkMeanY                 |Fast Fourier Transform (FFT) body acceleration Jerk signals mean y-axis |
| 31 | fBodyAccJerkMeanZ                 |Fast Fourier Transform (FFT) body acceleration Jerk signals mean z-axis |
| 32 | fBodyAccJerkMeanFreqX             |Fast Fourier Transform (FFT) body acceleration Jerk signals mean frequency x-axis |
| 33 | fBodyAccJerkMeanFreqY             |Fast Fourier Transform (FFT) body acceleration Jerk signals mean frequency y-axis |
| 34 | fBodyAccJerkMeanFreqZ             |Fast Fourier Transform (FFT) body acceleration Jerk signals mean frequency z-axis |
| 35 | fBodyGyroMeanX                    |Fast Fourier Transform (FFT) body gyroscope mean x-axis |
| 36 | fBodyGyroMeanY                    |Fast Fourier Transform (FFT) body gyroscope mean y-axis |
| 37 | fBodyGyroMeanZ                    |Fast Fourier Transform (FFT) body gyroscope mean z-axis |
| 38 | fBodyGyroMeanFreqX                |Fast Fourier Transform (FFT) body gyroscope mean frequency x-axis|
| 39 | fBodyGyroMeanFreqY                |Fast Fourier Transform (FFT) body gyroscope mean frequency y-axis|
| 40 | fBodyGyroMeanFreqZ                |Fast Fourier Transform (FFT) body gyroscope mean frequency z-axis|
| 41 | fBodyAccMagMean                   |Fast Fourier Transform (FFT) body acceleration magnitude mean|
| 42 | fBodyAccMagMeanFreq               |Fast Fourier Transform (FFT) body acceleration magnitude mean frequency|
| 43 | fBodyBodyAccJerkMagMean           |Fast Fourier Transform (FFT) body acceleration Jerk signals magnitude mean |
| 44 | fBodyBodyAccJerkMagMeanFreq       |Fast Fourier Transform (FFT) body acceleration Jerk signals magnitude frequency mean |
| 45 | fBodyBodyGyroMagMean              |Fast Fourier Transform (FFT) body gyroscope magnitude mean |
| 46 | fBodyBodyGyroMagMeanFreq          |Fast Fourier Transform (FFT) body gyroscope magnitude mean frequency |
| 47 | fBodyBodyGyroJerkMagMean          |Fast Fourier Transform (FFT) body gyroscope mean Jerk signals magnitude mean|
| 48 | fBodyBodyGyroJerkMagMeanFreq      |Fast Fourier Transform (FFT) body gyroscope mean Jerk signals magnitude mean frequency|
| 49 | angletBodyAccMeangravity          |angle time domain signal acceleration mean gravity mean|
| 50 | angletBodyAccJerkMeangravityMean  |angle time domain signal acceleration Jerk mean gravity mean|
| 51 | angletBodyGyroMeangravityMean     |angle time domain signal body mean gravity mean|
| 52 | angletBodyGyroJerkMeangravityMean |angle time domain signal body Jerk mean gravity mean|
| 53 | angleXgravityMean                 |angle time domain signal gravity mean x-axis|
| 54 | angleYgravityMean                 |angle time domain signal gravity mean y-axis|
| 55 | angleZgravityMean                 |angle time domain signal gravity mean z-axis|
| 56 | tBodyAccStdX                     |time domain signals body acceleration Standard deviation x-axis|
| 57 | tBodyAccStdY                     |time domain signals body acceleration Standard deviation y-axis|
| 58 | tBodyAccStdZ                     |time domain signals body acceleration Standard deviation z-axis |
| 59 | tGravityAccStdX                  |time domain signals gravity acceleration Standard deviation x-axis |
| 60 | tGravityAccStdY                  |time domain signals gravity acceleration Standard deviation y-axis |
| 61 | tGravityAccStdZ                  |time domain signals gravity acceleration Standard deviation z-axis |
| 62 | tBodyAccJerkStdX                 |time domain signals body acceleration Jerk signals Standard deviation x-axis |
| 63 | tBodyAccJerkStdY                 |time domain signals body acceleration Jerk signals Standard deviation y-axis |
| 64 | tBodyAccJerkStdZ                 |time domain signals body acceleration Jerk signals Standard deviation z-axis |
| 65 | tBodyGyroStdX                    |time domain signals body gyroscope Standard deviation x-axis |
| 66 | tBodyGyroStdY                    |time domain signals body gyroscope Standard deviation y-axis |
| 67 | tBodyGyroStdZ                    |time domain signals body gyroscope Standard deviation z-axis |
| 68 | tBodyGyroJerkStdX                |time domain signals body gyroscope Jerk signals Standard deviation x-axis |
| 69 | tBodyGyroJerkStdY                |time domain signals body gyroscope Jerk signals Standard deviation y-axis |
| 70 | tBodyGyroJerkStdZ                |time domain signals body gyroscope Jerk signals Standard deviation z-axis |
| 71 | tBodyAccMagStd                   |time domain signals body acceleration magnitude Standard deviation|
| 72 | tGravityAccMagStd                |time domain signals gravity acceleration magnitude Standard deviation |
| 73 | tBodyAccJerkMagStd               |time domain signals body acceleration Jerk signals magnitude Standard deviation |
| 74 | tBodyGyroMagStd                  |time domain signals body gyroscope magnitude Standard deviation |
| 75 | tBodyGyroJerkMagStd              |time domain signals body gyroscope Jerk signals magnitude Standard deviation |
| 76 | fBodyAccStdX                     |Fast Fourier Transform (FFT) body acceleration Standard deviation x-axis|
| 77 | fBodyAccStdY                     |Fast Fourier Transform (FFT) body acceleration Standard deviation y-axis|
| 78 | fBodyAccStdZ                     |Fast Fourier Transform (FFT) body acceleration Standard deviation z-axis |
| 79 | fBodyAccJerkStdX                 |Fast Fourier Transform (FFT) body acceleration Jerk signals Standard deviation x-axis |
| 80 | fBodyAccJerkStdY                 |Fast Fourier Transform (FFT) body acceleration Jerk signals Standard deviation y-axis |
| 81 | fBodyAccJerkStdZ                 |Fast Fourier Transform (FFT) body acceleration Jerk signals Standard deviation z-axis |
| 82 | fBodyGyroStdX                    |Fast Fourier Transform (FFT) body gyroscope Standard deviation x-axis |
| 83 | fBodyGyroStdY                    |Fast Fourier Transform (FFT) body gyroscope Standard deviation y-axis |
| 84 | fBodyGyroStdZ                    |Fast Fourier Transform (FFT) body gyroscope Standard deviation z-axis |
| 85 | fBodyAccMagStd                   |Fast Fourier Transform (FFT) body acceleration magnitude Standard deviation|
| 86 | fBodyAccJerkMagStd               |Fast Fourier Transform (FFT) body acceleration Jerk signals magnitude Standard deviation |
| 87 | fBodyGyroMagStd                  |Fast Fourier Transform (FFT) body gyroscope magnitude Standard deviation |
| 88 | fBodyGyroJerkMagStd              |Fast Fourier Transform (FFT) body gyroscope Jerk signals magnitude Standard deviation |

## The Transformation List
* Download raw data. Here are the data for this project. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.