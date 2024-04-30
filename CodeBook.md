# Code Book

This code book describes the variables, the data, and any transformations or work performed to clean up the data for the Human Activity Recognition Using Smartphones Dataset.

## Dataset Information

The dataset contains the average of each variable for each activity and each subject, derived from the original dataset collected from a group of 30 volunteers wearing a smartphone (Samsung Galaxy S II) on their waist while performing various activities.

## Variables

1. `subject`: The ID of the subject who performed the activity (range: 1-30).
2. `activity`: The type of activity performed by the subject, with the following descriptive labels:
   - WALKING
   - WALKING_UPSTAIRS
   - WALKING_DOWNSTAIRS
   - SITTING
   - STANDING
   - LAYING
3. The remaining variables represent the average of various features for each subject and activity. Each feature name follows a specific pattern:

   - `t` or `f` prefix: Indicates whether the feature is derived from time (`t`) or frequency (`f`) domain signals.
   - `Body` or `Gravity` prefix: Indicates whether the feature represents body acceleration or gravity acceleration.
   - `Acc` or `Gyro` suffix: Indicates whether the feature is derived from accelerometer (`Acc`) or gyroscope (`Gyro`) signals.
   - `mean()` or `std()`: Indicates whether the feature represents the mean or standard deviation of the signal.
   - XYZ: Indicates the direction of the signal (X, Y, or Z).

Example feature names:
   - `tBodyAcc-mean()-X`: Mean of body acceleration signal in the X direction (time domain).
   - `fBodyGyro-std()-Y`: Standard deviation of gyroscope signal in the Y direction (frequency domain).

## Transformations

1. The training and test datasets were merged to create one dataset.
2. Features representing mean and standard deviation measurements were extracted from the original feature dataset.
3. Descriptive activity names were used to name the activities in the dataset.
4. The dataset was appropriately labeled with descriptive variable names.
5. A tidy dataset was created with the average of each variable for each activity and each subject.

For more information about the original dataset, refer to the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

