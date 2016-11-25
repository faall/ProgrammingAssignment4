# TIDY DATA CODEBOOK

## Original Data

Original data was obtained from the Human Activity Recognition Using Smartphones Data Set [1] <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones> where detailed information about methodology to obtain data and specific data meaning can be found.

The original data set can be downloaded directly from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Data has been processed in the following steps to create final data set:

- 'Test' and 'Train' data has been combined in one unique data set discarding all inertial data.
- A subset containing subject, activity label and features marked with 'mean()' and 'std()' was created.
- Data was grouped by 'subject' and 'activity' calculating the mean of each variable.

## Tidy Data data set

### subject: integer
    An identifier of the subject who carried out the experiment.
        1..30
        
### activity: character
    The activity label under which the data was collected.
        walking
        upstairs
        downstairs
        sitting
        standing
        laying
        
### tBodyAccMeanX: real
    Mean of body acceleration in X axis mean.
        -1..1 normalized value
    
### tBodyAccMeanY: real
    Mean of body acceleration in Y axis mean.
        -1..1 normalized value

### tBodyAccMeanZ: real
    Mean of body acceleration in Z axis mean.
        -1..1 normalized value

### tBodyAccStdX: real
    Mean of body acceleration in X axis standard deviation.
        -1..1 normalized value

### tBodyAccStdY: real
    Mean of body acceleration in Y axis standard deviation.
        -1..1 normalized value

### tBodyAccStdZ: real
    Mean of body acceleration in Z axis standard deviation.
        -1..1 normalized value

### tGravityAccMeanX: real
    Mean of gravity acceleration in X axis mean.
        -1..1 normalized value

### tGravityAccMeanY: real
    Mean of gravity acceleration in Y axis mean.
        -1..1 normalized value

### tGravityAccMeanZ: real
    Mean of gravity acceleration in Z axis mean.
        -1..1 normalized value

### tGravityAccStdX: real
    Mean of gravity acceleration in X axis standard deviation.
        -1..1 normalized value

### tGravityAccStdY: real
    Mean of gravity acceleration in Y axis standard deviation.
        -1..1 normalized value

### tGravityAccStdZ: real
    Mean of gravity acceleration in Z axis standard deviation.
        -1..1 normalized value

### tBodyAccJerkMeanX: real
    Mean of body acceleration in X axis derived in time mean.
        -1..1 normalized value
    
### tBodyAccJerkMeanY: real
    Mean of body acceleration in Y axis derived in time mean.
        -1..1 normalized value
    
### tBodyAccJerkMeanZ: real
    Mean of body acceleration in Z axis derived in time mean.
        -1..1 normalized value
    
### tBodyAccJerkStdX: real
    Mean of body acceleration in X axis derived in time standard deviation.
        -1..1 normalized value
    
### tBodyAccJerkStdY: real
    Mean of body acceleration in Y axis derived in time standard deviation.
        -1..1 normalized value
    
### tBodyAccJerkStdZ: real
    Mean of body acceleration in Z axis derived in time standard deviation.
        -1..1 normalized value
    
### tBodyGyroMeanX: real
    Mean of body angular velocity in X axis mean.
        -1..1 normalized value
    
### tBodyGyroMeanY: real
    Mean of body angular velocity in Y axis mean.
        -1..1 normalized value
    
### tBodyGyroMeanZ: real
    Mean of body angular velocity in Z axis mean.
        -1..1 normalized value
    
### tBodyGyroStdX: real
    Mean of body angular velocity in X axis standard deviation.
        -1..1 normalized value
    
### tBodyGyroStdY: real
    Mean of body angular velocity in Y axis standard deviation.
        -1..1 normalized value
    
### tBodyGyroStdZ: real
    Mean of body angular velocity in Z axis standard deviation.
        -1..1 normalized value
    
### tBodyGyroJerkMeanX: real
    Mean of body angular velocity in X axis derived in time mean.
        -1..1 normalized value
    
### tBodyGyroJerkMeanY: real
    Mean of body angular velocity in Y axis derived in time mean.
        -1..1 normalized value
    
### tBodyGyroJerkMeanZ: real
    Mean of body angular velocity in Z axis derived in time mean.
        -1..1 normalized value
    
### tBodyGyroJerkStdX: real
    Mean of body angular velocity in X axis derived in time standard deviation.
        -1..1 normalized value
    
### tBodyGyroJerkStdY: real
    Mean of body angular velocity in Y axis derived in time standard deviation.
        -1..1 normalized value

### tBodyGyroJerkStdZ: real
    Mean of body angular velocity in Z axis derived in time standard deviation.
        -1..1 normalized value

### tBodyAccMagMean: real
    Mean of body acceleration using the Euclidean norm mean.
        -1..1 normalized value

### tBodyAccMagStd: real
    Mean of body acceleration using the Euclidean norm standard deviation.
        -1..1 normalized value

### tGravityAccMagMean: real
    Mean of gravity acceleration using the Euclidean norm mean.
        -1..1 normalized value

### tGravityAccMagStd: real
    Mean of gravity acceleration using the Euclidean norm standard deviation.
        -1..1 normalized value

### tBodyAccJerkMagMean: real
    Mean of body acceleration using the Euclidean norm derived in time mean.
        -1..1 normalized value

### tBodyAccJerkMagStd: real
    Mean of body acceleration using the Euclidean norm derived in time standard deviation.
        -1..1 normalized value

### tBodyGyroMagMean: real
    Mean of body angular velocity using the Euclidean norm mean.
        -1..1 normalized value

### tBodyGyroMagStd: real
    Mean of body angular velocity using the Euclidean norm standard deviation.
        -1..1 normalized value

### tBodyGyroJerkMagMean: real
    Mean of body angular velocity using the Euclidean norm derived in time mean.
        -1..1 normalized value

### tBodyGyroJerkMagStd: real
    Mean of body angular velocity using the Euclidean norm derived in time standard deviation.
        -1..1 normalized value

### fBodyAccMeanX: real
    Mean of Fast Fourier Transform of body acceleration in X axis mean.
        -1..1 normalized value
    
### fBodyAccMeanY: real
    Mean of Fast Fourier Transform of body acceleration in Y axis mean.
        -1..1 normalized value
 
### fBodyAccMean: real
    Mean of Fast Fourier Transform of body acceleration in Z axis mean.
        -1..1 normalized value

### fBodyAccStdX: real
    Mean of Fast Fourier Transform of body acceleration in X axis standard deviation.
        -1..1 normalized value
 
### fBodyAccStdY: real
    Mean of Fast Fourier Transform of body acceleration in Y axis standard deviation.
        -1..1 normalized value
 
### fBodyAccStdZ: real
    Mean of Fast Fourier Transform of body acceleration in Z axis standard deviation.
        -1..1 normalized value
 
### fBodyAccJerkMeanX: real
    Mean of Fast Fourier Transform of body acceleration in X axis derived in time mean.
        -1..1 normalized value

### fBodyAccJerkMeanY: real
    Mean of Fast Fourier Transform of body acceleration in Y axis derived in time mean.
        -1..1 normalized value

### fBodyAccJerkMeanZ: real
    Mean of Fast Fourier Transform of body acceleration in Z axis derived in time mean.
        -1..1 normalized value

### fBodyAccJerkStdX: real
    Mean of Fast Fourier Transform of body acceleration in X axis derived in time standard deviation.
        -1..1 normalized value

### fBodyAccJerkStdY: real
     Mean of Fast Fourier Transform of body acceleration in Y axis derived in time standard deviation.
        -1..1 normalized value

### fBodyAccJerkStdZ: real
    Mean of Fast Fourier Transform of body acceleration in Z axis derived in time standard deviation.
        -1..1 normalized value

### fBodyGyroMeanX: real
    Mean of Fast Fourier Transform of body angular velocity in X axis mean.
        -1..1 normalized value

### fBodyGyroMeanY: real
    Mean of Fast Fourier Transform of body angular velocity in Y axis mean.
        -1..1 normalized value

### fBodyGyroMeanZ: real
    Mean of Fast Fourier Transform of body angular velocity in Z axis mean.
        -1..1 normalized value

### fBodyGyroStdX: real
    Mean of Fast Fourier Transform of body angular velocity in X axis standard deviation.
        -1..1 normalized value

### fBodyGyroStdY: real
    Mean of Fast Fourier Transform of body angular velocity in Y axis standard deviation.
        -1..1 normalized value

### fBodyGyroStdZ: real
    Mean of Fast Fourier Transform of body angular velocity in Z axis standard deviation.
        -1..1 normalized value

### fBodyAccMagMean: real
    Mean of Fast Fourier Transform of body acceleration using the Euclidean norm mean.
        -1..1 normalized value

### fBodyAccMagStd: real
    Mean of Fast Fourier Transform of body acceleration using the Euclidean norm standard deviation.
        -1..1 normalized value

### fBodyBodyAccJerkMagMean: real
    Mean of Fast Fourier Transform of body acceleration using the Euclidean norm derived in time mean.
        -1..1 normalized value

### fBodyBodyAccJerkMagStd: real
    Mean of Fast Fourier Transform of body acceleration using the Euclidean norm derived in time standard deviation.
        -1..1 normalized value

### fBodyBodyGyroMagMean: real
    Mean of Fast Fourier Transform of body angular velocity using the Euclidean norm mean.
        -1..1 normalized value

### fBodyBodyGyroMagStd: real
    Mean of Fast Fourier Transform of body angular velocity using the Euclidean norm standard deviation.
        -1..1 normalized value

### fBodyBodyGyroJerkMagMean: real
    Mean of Fast Fourier Transform of body angular velocity using the Euclidean norm derived in time mean.
        -1..1 normalized value

### fBodyBodyGyroJerkMagStd: real
    Mean of Fast Fourier Transform of body angular velocity using the Euclidean norm derived in time standard deviation.
        -1..1 normalized value



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

