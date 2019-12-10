# **Getting and Cleaning Data Course Project**

This is the assignment for 4th week of the 3rd course in DataScience specialization by Johns Hopkins.


### **Content**

* **run_analysis.R**:The only script in the project the performs all the requirements for the project
* **Codebook.md**:the code book the describes the variables.

### **How it works**

The script consists of 3 main parts:<br>
* **Getting the data ready**: in this part the script downloads the zipped file and unzip it.<br>
* **Reading the data**: in this section we simply read the .txt files from the downloaded folder.<br>
* **Performing the requirements**: performing the 5 steps required which will be listed in the following:<br>

**1-Merging data together**: after reading the data from each file, it's time to merge the data togther by merging the train and the test then binding both with each other making a full dataframe.<br>

**2-Extracting measurements for mean and std**: in this step we only pick the mean and standrad deviation features from our dataset and leave everything else.<br>

**3/4-Renaming activities/features in the tidy dataframe**: It's time to give meaningful names to our dataset, by renaming the columns refering to activities and our features as they contain a lot of abbriviations that might be confusing to others.<br>

**5-creating the second tidy dataset**: The last requirement and the final dataset , is another one that is grouped by certain columns that contains means for all features for each of the grouped columns.<br>

*The last part is just writing the dataset to a file.*