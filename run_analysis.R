# Step 1: Merging the training and test sets
# Read feature data
X_test <- read.table("test/X_test.txt")
X_train <- read.table("train/X_train.txt")
features <- rbind(X_test, X_train)

# Read subject data
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")
subjects <- rbind(subject_test, subject_train)

# Renaming the subject column
colnames(subjects) <- "subject"

# Read activity data
y_test <- read.table("test/y_test.txt")
y_train <- read.table("train/y_train.txt")
activities <- rbind(y_test, y_train)

colnames(activities) <- "activity"
# Step 2: Extracting mean and standard deviation measurements
features_names <- read.table("features.txt")[, 2]
mean_std_indices <- grep("mean\\(\\)|std\\(\\)", features_names)
selected_features <- features[, mean_std_indices]

# Step 3: Using descriptive activity names
activity_labels <- read.table("activity_labels.txt")[, 2]
activities[, 1] <- factor(activities[, 1], levels = 1:6, labels = activity_labels)

# Step 4: Appropriately label the dataset with descriptive variable names
colnames(selected_features) <- features_names[mean_std_indices]

# Step 5: Creating a tidy dataset with the average of each variable for each activity and each subject
library(dplyr)
combined_data <- cbind(subjects, activities, selected_features)
tidy_data <- combined_data %>%
  group_by(subject, activity) %>%
  summarize_all(mean)

print(tidy_data)
