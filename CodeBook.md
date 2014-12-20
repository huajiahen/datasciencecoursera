Human Activity Recognition Using Smartphones Data 
=======

# Workflow
1. Merges the training and the test sets, Set columns' name.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Merge data sets to one.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. (optional)Save data.

# Variables

## mergedData
- `subject`: Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- `activityName`: The activity name of each observation. The possible values of this field are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
- Other columns: The list of all columns names is in `features.txt`. You could find the description of them in `features_info.txt`.

## tidyData
Data in `tidyData` are the average of each variable for each activity and each subject. The meaning of each column is just the same as `mergedData`.



For more infomation, you could check out `features_info.txt`.

William Huang. Decenber 2014.