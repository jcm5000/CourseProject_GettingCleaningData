# Read in data
path_main <- '/Users/mauerhan/Coursera/data_science_tools/getting_cleaning_data/CourseProject/UCI_HAR_Dataset/'

test_label <- read.table(path_main+'test/y_test.txt')
test_vars <- read.table(path_main+'test/X_test.txt')
test <- cbind(test_label,test_vars)

train_label <- read.table(path_main+'train/y_train.txt')
train_vars <- read.table(path_main+'train/X_train.txt')
train <- cbind(train_label,train_vars)

mergedData <- merge(test,train)

#1 Merges the training and the test sets to create one data set.        



#2 Extracts only the measurements on the mean and standard deviation for each measurement.

#data of interest is mean and stdev for every variable
#so we need to grep on variables listed in features.txt for "mean" and "std"
#logging their index numbers that represent the columns we need to extract from 
# X_test.txt y_test.txt X_train.txt y_train.txt

#3 Uses descriptive activity names to name the activities in the data set

#4 Appropriately labels the data set with descriptive variable names.

#5 From the data set in step 4, creates a second, independent tidy data set with the 
#  average of each variable for each activity and each subject.