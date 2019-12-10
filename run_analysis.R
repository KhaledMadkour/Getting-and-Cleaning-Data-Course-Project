library(dplyr)

###################[Getting the data ready]##########################################################
filename = "Week_4_assingment.zip"

if (!file.exists("Week_4_assingment.zip")) { 
  fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename ) 
}

#unzip the .rar file the contains the database

if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

###################[Reading the data]##########################################################
#Read features and activity labels
features = read.table("UCI HAR Dataset/features.txt", col.names = c("n","feature"))
activities = read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("id","label"))

#Reading Test Set
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test = read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
y_test = read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity")

#Reading Trainig Set
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train = read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
y_train = read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity")


###################[Performing the requirements]##########################################################

###################[1-Merging data together]###################################################
train = cbind(subject_train,x_train,y_train)
test  = cbind(subject_test ,x_test ,y_test)
MergedDT = rbind( train , test)



###################[2-Extracting measurements for mean and std]################################
tidyDT = MergedDT %>% select(subject, activity , contains("mean"), contains("std"))



###################[3-Renaming activities in the tidy dataframe]###############################
tidyDT$activity = activities[tidyDT$activity , 2]


###################[4-Renaming features in the tidy dataframe]#################################
names(tidyDT) = gsub('Acc',"Accelerometer",names(tidyDT))
names(tidyDT) = gsub('Gyro',"Gyroscope",names(tidyDT))
names(tidyDT) = gsub('Mag',"Magnitude",names(tidyDT))
names(tidyDT) = gsub('^t',"Time",names(tidyDT))
names(tidyDT) = gsub('^f',"Frequency",names(tidyDT))
names(tidyDT) = gsub('-mean()',"Mean",names(tidyDT))
names(tidyDT) = gsub('-std()',"StandardDeviation",names(tidyDT))

###################[5-creating the second tidy dataset]########################################
Another_tidyDT = tidyDT  %>% group_by(subject, activity) %>% summarise_all(mean)


#writing lastdata to a text file
write.table(Another_tidyDT, file="Final_tidy_dataset.txt", row.names = FALSE)
