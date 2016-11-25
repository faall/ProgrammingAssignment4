################################################################################
#  STEP 1: Merge the training and the test sets to create one data set.        #
################################################################################

# Start reading the 'test' set: the data, activity label and the subject coming
# from different source files.
# The raw inertial data is simply not needed, the assignment says nothing
# about that and it is not required for the transformation ahead.
dfTestData <- read.table("./UCI HAR Dataset/test/X_test.txt")
dfTestLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
dfTestSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Combine the 3 data frames by columns: subject + label + data
dfTest <- cbind(dfTestSubject, dfTestLabel, dfTestData)

# Repeat the same exercise for the 'train' set.
dfTrainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
dfTrainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
dfTrainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

dfTrain <- cbind(dfTrainSubject, dfTrainLabel, dfTrainData)

# Now combine both data frames to create a unique data frame. Since 'test' and
# 'train' data frames were created the same way, rbind will have no problems
# matching the columns.
dfData1 <- rbind(dfTest, dfTrain)


# Read the 'features' set. This will give the column names for the imported
# data (using 'stringsAsFactors = FALSE' because column names are strings)
dfFeatures <- read.table("./UCI HAR Dataset/features.txt",
                          stringsAsFactors = FALSE)

# Modify the column names. The first 3 columns are the ones binded to the 'X' set
# so I choose their names matching the origin of the data as described in the 
# original data information. Column names for the 'X' data set are defined in the
# 'features' set, column V2 is a vector of strings that we can combine with the
# names for the first columns.
names(dfData1) <- c("subject", "activity", dfFeatures$V2)


################################################################################
#  STEP 2: Extract only the measurements on the mean and standard deviation    #
#          for each measurement.                                               #
################################################################################

# Pick the columns we need: all columns containing means and standard deviations.
# As I understand this includes columns that have the 'mean()' or 'std()', I am
# excluding 'meanFreq' and all 'angle....' because they do not represent a 
# calculated mean, they rather use mean to calculate anew variable.
# The following command will combine the first 3 columns (subject, label and set)
# with all column names that contains (using the grep command) 'mean()' or 'std()'
# (the pipe '|' is used for the regular expression 'or' and '\\(' is the escape
# sequence to match an opening parenthesis).
selColumns <- c(1:2, grep("(mean|std)\\(", names(dfData1)))

# Now reduce the data frame to the columns picked above.
dfData2 <- subset(dfData1, select = selColumns)


################################################################################
#  STEP 3: Uses descriptive activity names to name the activities in the data  #
#          set.                                                                #
################################################################################

# Usually this could be done by merging (using the command merge()) two data
# frames using the 'activity' column in our data as an id. But in this exercise 
# we only need to replace a column of integers with texts, it is shouting for a
# factor. The following commands will convert the 'activity' column into factor
# an then reassign the levels to match the contents of 'activity_labels.txt'.
# I decided to use all lower for style and simplify the WALKING_UPSTARIRS and
# DOWNSTAIRS since it is too long and, well, if you are going up or down in a
# stair you better go walking.

dfData3 <- dfData2
dfData3$activity <- as.factor(dfData3$activity)
levels(dfData3$activity) <- c("walking", "upstairs", "downstairs", "sitting",
                               "standing", "laying")

################################################################################
#  STEP 4: Appropriately label the data set with descriptive variable names.   #
################################################################################

# As discussed in the Readme.md file, remove from names '-', '()' and make 
# mean->Mean and std->Std. Get the names of columns and find&replace with gsub().

dfData4 <- dfData3
data4Names <- names(dfData4)
data4Names <- gsub("-|\\(|\\)", "", data4Names)
data4Names <- gsub("mean", "Mean", data4Names)
data4Names <- gsub("std", "Std", data4Names)
names(dfData4) <- data4Names

################################################################################
# STEP 5: From the data set in step 4, creates a second, independent tidy      #
#         data set with the average of each variable for each activity and     #
#         each subject.                                                        #
################################################################################

# As discussed in the Readme.md file, the output data frame is "wide", there is
# no indication of the future use of the data so there is no gain in further
# processing for "tidiness".
# The new table is created with aggregate(). First parameter is all columns but
# the two first, i.e., it is the data to be processed by the function mean and
# second parameter is a list with the two columns we need to group by (subject
# and activity).

dfData5 <- aggregate(dfData4[,-(1:2)],
                     list(subject = dfData4$subject, activity = dfData4$activity),
                     mean)

# Create a txt file with the tidy data set using the command indicated in the
# submission instructions.
write.table(dfData5, "./tidydataset.txt", eol = "\r\n" , quote = FALSE,
            row.name = FALSE)

# To read the file into R again use:
# tydidataset<-read.table("./tidydataset.txt", header = TRUE)
