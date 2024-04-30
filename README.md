# Human Activity Recognition Using Smartphones Dataset

This repository contains a tidy dataset derived from the Human Activity Recognition Using Smartphones Dataset. The dataset was collected from a group of 30 volunteers wearing a smartphone (Samsung Galaxy S II) on their waist while performing various activities. The smartphone's embedded accelerometer and gyroscope were used to capture 3-axial linear acceleration and 3-axial angular velocity.

## Steps Taken

1. **Data Collection and Merging**: 
   - The training and test datasets were merged to create one dataset.
   - The features representing mean and standard deviation measurements were extracted.
   - Descriptive activity names were used to name the activities in the dataset.

2. **Data Cleaning and Transformation**:
   - The dataset was appropriately labeled with descriptive variable names.
   - A tidy dataset was created with the average of each variable for each activity and each subject.

## Files Included
- `README.md`: This file, providing an overview of the repository.
- `tidy_data.csv`: The tidy dataset containing the average of each variable for each activity and each subject.
- `run_analysis.R`: The R script used to perform the analysis and create the tidy dataset.
- `CodeBook.md`: A code book describing the variables, the data, and any transformations performed to clean up the data.
- `activity_labels.txt`: A file containing the mapping of activity codes to activity names.
- `features.txt`: A file containing the names of all the features in the dataset.
- `features_info.txt`: Information about the features in the dataset.
- `test/` and `train/`: Directories containing the original test and training datasets.

## Further Analysis

There are several additional analyses that can be performed with this dataset, including:

- Exploratory Data Analysis (EDA) to gain insights into the relationship between different variables and activities.
- Building machine learning models to predict human activity based on sensor data.
- Assessing the performance of different algorithms for activity recognition.
- Investigating the impact of feature selection techniques on model performance.
- Exploring feature engineering techniques to derive new features from the raw sensor data.

For more information about the dataset and its potential applications, refer to the [original dataset description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Acknowledgements

The original dataset was provided by:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.

