# **Codebook**

## **Human Activity Recognition Using Smartphones Data Set**

## **Getting the data**
* **Description:** http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)<br>
* **Data:** https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip<br>

## **The data:**

The files we worked on:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


## **Cleaning the data**

Join train, test and subject then selecting only features associated with mean and standard deviation leaving all the others, then grouping by subject and activity while summarizing the values by the mean.

## **Variables**

#### **1-Subject :** identifies the subject who performed the activity. Its range is from 1 to 30.

#### **2-Activity :** the activity types. Ranged between 6 different values.<br> 

1.WALKING<br>
2.WALKING_UPSTAIRS<br>
3.WALKING_DOWNSTAIRS<br>
4.SITTING<br>
5.STANDING<br>
6.LAYING<br>


#### **features :** as descibed in features info.txt:
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz."<br>

We only left features accoicated with mean and standard deviation which are:

3."tBodyAcc-mean()-X"

4."tBodyAcc-mean()-Y"

5."tBodyAcc-mean()-Z"

6."tBodyAcc-std()-X"

7."tBodyAcc-std()-Y"

8."tBodyAcc-std()-Z"

9."tGravityAcc-mean()-X"

10."tGravityAcc-mean()-Y"

11."tGravityAcc-mean()-Z"

12."tGravityAcc-std()-X"

13."tGravityAcc-std()-Y"

14."tGravityAcc-std()-Z"

15."tBodyAccJerk-mean()-X"

16."tBodyAccJerk-mean()-Y"

17."tBodyAccJerk-mean()-Z"

18."tBodyAccJerk-std()-X"

19."tBodyAccJerk-std()-Y"

20."tBodyAccJerk-std()-Z"

21."tBodyGyro-mean()-X"

22."tBodyGyro-mean()-Y"

23."tBodyGyro-mean()-Z"

24."tBodyGyro-std()-X"

25."tBodyGyro-std()-Y"

26."tBodyGyro-std()-Z"

27."tBodyGyroJerk-mean()-X"

28."tBodyGyroJerk-mean()-Y"

29."tBodyGyroJerk-mean()-Z"

30."tBodyGyroJerk-std()-X"

31."tBodyGyroJerk-std()-Y"

32."tBodyGyroJerk-std()-Z"

33."tBodyAccMag-mean()"

34."tBodyAccMag-std()"

35."tGravityAccMag-mean()"

36."tGravityAccMag-std()"

37."tBodyAccJerkMag-mean()"

38."tBodyAccJerkMag-std()"

39."tBodyGyroMag-mean()"

40."tBodyGyroMag-std()"

41."tBodyGyroJerkMag-mean()"

42."tBodyGyroJerkMag-std()"

43."fBodyAcc-mean()-X"

44."fBodyAcc-mean()-Y"

45."fBodyAcc-mean()-Z"

46."fBodyAcc-std()-X"

47."fBodyAcc-std()-Y"

48."fBodyAcc-std()-Z"

49."fBodyAccJerk-mean()-X"

50."fBodyAccJerk-mean()-Y"

51."fBodyAccJerk-mean()-Z"

52."fBodyAccJerk-std()-X"

53."fBodyAccJerk-std()-Y"

54."fBodyAccJerk-std()-Z"

55."fBodyGyro-mean()-X"

56."fBodyGyro-mean()-Y"

57."fBodyGyro-mean()-Z"

58."fBodyGyro-std()-X"

59."fBodyGyro-std()-Y"

60."fBodyGyro-std()-Z"

61."fBodyAccMag-mean()"

62."fBodyAccMag-std()"

63."fBodyBodyAccJerkMag-mean()"

64."fBodyBodyAccJerkMag-std()"

65."fBodyBodyGyroMag-mean()"

66."fBodyBodyGyroMag-std()"

67."fBodyBodyGyroJerkMag-mean()"

68."fBodyBodyGyroJerkMag-std()"
