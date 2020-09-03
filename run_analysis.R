# Load libraries
library(plyr)
library(reshape2)

# Load file into directory
if (!file.exists("UCI HAR Dataset")){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL,destfile = "./data.zip", method = "curl")

    zipF<- "./data.zip"
    unzip(zipF)
}

setwd("./UCI HAR Dataset")

##### Step 1: Merge the training and the test sets to create one data set #####

# Read data from train and test
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
s_train <- read.table("./train/subject_train.txt")

x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
s_test <- read.table("./test/subject_test.txt")

# Bind train and test
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
s <- rbind(s_train, s_test)

# Add names to columns
feature_names <- read.table("./features.txt")
names(x) <- feature_names$V2
names(y) <- c("Activity")
names(s) <- c("Subject")

# Bind them altogether
data_c <- cbind(s,y)
data <- cbind(x, data_c)


##### Step 2: Extract only the measurements on the mean and standard deviation for each measurement #####

# Look for mean and standard deviation names
feature_names_sub <-feature_names$V2[grep("mean\\(\\)|std\\(\\)", feature_names$V2)]

# Extract out mean and standard deviation measurements from combined dataset
cols_to_select <- c(as.character(feature_names_sub), "Subject", "Activity" )
data <- subset(data, select = cols_to_select)
str(data)

##### Step 3: Use descriptive activity names to name the activities in the data set #####

activity_names <- read.table("./activity_labels.txt")

# Map the values to activity names
data$Activity <- mapvalues(data$Activity, from = c(1:6), to = activity_names$V2)

##### Step 4: Appropriately labels the data set with descriptive variable names #####

names(data)<-gsub("^t", "Time", names(data))
names(data)<-gsub("^f", "Frequency", names(data))
names(data)<-gsub("Acc", "Accelerometer", names(data))
names(data)<-gsub("Gyro", "Gyroscope", names(data))
names(data)<-gsub("Mag", "Magnitude", names(data))
names(data)<-gsub("BodyBody", "Body", names(data))

##### Step 5: Create a second, independent tidy data set with the average of each variable for each activity and each subject #####

new_feature_names <- names(data)[grep("mean\\(\\)|std\\(\\)", names(data))]

# Reshape dataset and compute average
melted_data <- melt(data, id = c('Activity', 'Subject'), measure.vars = new_feature_names)
new_data <- dcast(melted_data, Activity + Subject ~ variable, mean)

write.table(new_data, "./tidy_dataset.txt", row.name=FALSE)
