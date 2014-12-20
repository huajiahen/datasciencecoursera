library(tidyr)
library(dplyr)
library(reshape2)

# Read data from files.
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
X_train <- read.table('UCI HAR Dataset/train/X_train.txt')
y_train <- read.table('UCI HAR Dataset/train/y_train.txt')
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
X_test <- read.table('UCI HAR Dataset/test/X_test.txt')
y_test <- read.table('UCI HAR Dataset/test/y_test.txt')

# Merges the training and the test sets
subject <- rbind.data.frame(subject_train, subject_test)
X <- rbind.data.frame(X_train, X_test)
y <- rbind.data.frame(y_train, y_test)

# Set columns' name
colnames(subject) <- 'subject'
features <- read.table('UCI HAR Dataset/features.txt', stringsAsFactors = FALSE)
colnames(X) <- features$V2
colnames(y) <- 'activityName'

# Extracts only the measurements on the mean and standard deviation for each measurement. 
X <- X[, grep('(mean|std)\\(\\)', colnames(X), value=TRUE)]

# Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt', 
    stringsAsFactors = FALSE)
y$activityName <- factor(y$activityName, activity_labels$V1, activity_labels$V2)

# Merge data sets to one.
mergedData <- cbind.data.frame(subject, X, y)

# Creates a second, independent tidy data set with the average of each variable
# for each activity and each subject.
meltData <- melt(mergedData, id=c('subject','activityName'))
tidyData <- dcast(tidyData, subject + activityName ~ variable, mean)

# Clean up
rm('subject_train','X_train','y_train','subject_test','X_test','y_test','subject'
    ,'X','y','features','activity_labels','meltData')

# Archive the result. You can comment them if you don't need archived data.
write.table(mergedData,'mergedData.txt')
write.table(tidyData,'tidyData.txt')

