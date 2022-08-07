---
title: "Codebook"
author: "Anne Velazquez"
date: "`r Sys.Date()`"
output: html_document
editor_options: 
  chunk_output_type: console
---

##CodeBook

###Source Data Information
This codebook corresponds with the data in the file `tidydata.txt`.

The data in this analysis represents data collected from the accelerometers from the Samsung Galaxy S smartphone. The data was collected from a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The `tidydata.txt` data set only contains measurements on the mean and standard deviation for each measurement. The final data set contains the mean value of each measurement for each subject and each activity. 

###Variables
 [1] "Subject" - Identifies each subject in the data set
 [2] "Activity_Label" - the description of the activity measured                 
 [3] "Activity" - the activity code that corresponds to the activity type
 [4] "tBodyAcc-mean()-X"                   
 [5] "tBodyAcc-mean()-Y"                   
 [6] "tBodyAcc-mean()-Z"                   
 [7] "tGravityAcc-mean()-X"                
 [8] "tGravityAcc-mean()-Y"                
 [9] "tGravityAcc-mean()-Z"                
[10] "tBodyAccJerk-mean()-X"               
[11] "tBodyAccJerk-mean()-Y"               
[12] "tBodyAccJerk-mean()-Z"               
[13] "tBodyGyro-mean()-X"                  
[14] "tBodyGyro-mean()-Y"                  
[15] "tBodyGyro-mean()-Z"                  
[16] "tBodyGyroJerk-mean()-X"              
[17] "tBodyGyroJerk-mean()-Y"              
[18] "tBodyGyroJerk-mean()-Z"              
[19] "tBodyAccMag-mean()"                  
[20] "tGravityAccMag-mean()"
[21] "tBodyAccJerkMag-mean()"              
[22] "tBodyGyroMag-mean()"                 
[23] "tBodyGyroJerkMag-mean()"             
[24] "fBodyAcc-mean()-X"                   
[25] "fBodyAcc-mean()-Y"                   
[26] "fBodyAcc-mean()-Z"                   
[27] "fBodyAcc-meanFreq()-X"               
[28] "fBodyAcc-meanFreq()-Y"               
[29] "fBodyAcc-meanFreq()-Z"               
[30] "fBodyAccJerk-mean()-X"               
[31] "fBodyAccJerk-mean()-Y"               
[32] "fBodyAccJerk-mean()-Z"               
[33] "fBodyAccJerk-meanFreq()-X"           
[34] "fBodyAccJerk-meanFreq()-Y"           
[35] "fBodyAccJerk-meanFreq()-Z"           
[36] "fBodyGyro-mean()-X"                  
[37] "fBodyGyro-mean()-Y"                  
[38] "fBodyGyro-mean()-Z" 
[39] "fBodyGyro-meanFreq()-X"              
[40] "fBodyGyro-meanFreq()-Y"              
[41] "fBodyGyro-meanFreq()-Z"              
[42] "fBodyAccMag-mean()"                  
[43] "fBodyAccMag-meanFreq()"              
[44] "fBodyBodyAccJerkMag-mean()"          
[45] "fBodyBodyAccJerkMag-meanFreq()"      
[46] "fBodyBodyGyroMag-mean()"             
[47] "fBodyBodyGyroMag-meanFreq()"         
[48] "fBodyBodyGyroJerkMag-mean()"         
[49] "fBodyBodyGyroJerkMag-meanFreq()"     
[50] "angle(tBodyAccMean,gravity)"         
[51] "angle(tBodyAccJerkMean),gravityMean)"
[52] "angle(tBodyGyroMean,gravityMean)"    
[53] "angle(tBodyGyroJerkMean,gravityMean)"
[54] "angle(X,gravityMean)"                
[55] "angle(Y,gravityMean)"                
[56] "angle(Z,gravityMean)"                
[57] "tBodyAcc-std()-X"                    
[58] "tBodyAcc-std()-Y"   
[59] "tBodyAcc-std()-Z"                    
[60] "tGravityAcc-std()-X"                 
[61] "tGravityAcc-std()-Y"                 
[62] "tGravityAcc-std()-Z"                 
[63] "tBodyAccJerk-std()-X"                
[64] "tBodyAccJerk-std()-Y"                
[65] "tBodyAccJerk-std()-Z"                
[66] "tBodyGyro-std()-X"                   
[67] "tBodyGyro-std()-Y"                   
[68] "tBodyGyro-std()-Z"                   
[69] "tBodyGyroJerk-std()-X"               
[70] "tBodyGyroJerk-std()-Y"               
[71] "tBodyGyroJerk-std()-Z"               
[72] "tBodyAccMag-std()"                   
[73] "tGravityAccMag-std()"                
[74] "tBodyAccJerkMag-std()"               
[75] "tBodyGyroMag-std()"                  
[76] "tBodyGyroJerkMag-std()"              
[77] "fBodyAcc-std()-X"                    
[78] "fBodyAcc-std()-Y"                    
[79] "fBodyAcc-std()-Z"                    
[80] "fBodyAccJerk-std()-X"                
[81] "fBodyAccJerk-std()-Y"                
[82] "fBodyAccJerk-std()-Z"                
[83] "fBodyGyro-std()-X"                   
[84] "fBodyGyro-std()-Y"                   
[85] "fBodyGyro-std()-Z"                   
[86] "fBodyAccMag-std()"                   
[87] "fBodyBodyAccJerkMag-std()"           
[88] "fBodyBodyGyroMag-std()"              
[89] "fBodyBodyGyroJerkMag-std()" 

