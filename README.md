# Getting and Cleaning Data Course Project

This repository contains the files required in the **Getting and Cleaning Data Course Project** instructions:

- a **README.md** (this file) containiign details of the repository and comments on the task,
- a script **run_analysis.R** that performs the data transformations required,
- a **tidydataset.txt** file containing the resulting data from the script, and
- a **Codebook.md** file containing details of the tynidataset variables.

## The **run_analysis.R** script

All the five tasks described in the project are performed inside this scrip. Each task is clearly indicated within the file, with comments on the strategy adopted to manipulate the data and explanation for relevant commands/parameters used.

The submission instructions clearly indicates that the scrip should run assuming that the original data set is already installed in the working directory so the script does not include code for downloading and extracting the files. In any case this is something that I would put on a separate script, usually the download is just necessary the first time or if the files get somehow corrupted/deleted while the analysis script is something that would be called several times for debugging.

The script is meant to be easy to read and follow, so each task ends with a new data frame. This is not memory friendly but makes it easier to compare each transformation with the previous state. A script that is not meant for marking would certaily reuse some objects and include code to remove intermediary objects.

In short the script goes like this:
- load the three sources files for the 'test' data set adn bind columns.
- load the three sources files for the 'train' data set adn bind columns.
- bind rows from both data frames.
- read the 'features' file and constructs headers for all the columns.
- select only those columns with mean() or std() in the name (besides subject and activity, of course).
- calculates mean of data grouping by subject and activity.

Note that the inertial data (contained in a separate folder in the original data) is not processed. The assignment requires to provide mean for 'mean' and 'standard deviation' and the inertial files are just raw input from the phone sensor.

## The **tidydataset** file

This file was created in a linux OS but the proper end of line codes were included in the write.table at the end of the script to generate a Windows compliant file.

This file is meant to represent a tidy data set, but as David Hood concludes in his web page [1] about this assignment:

>Yes. The wide or narrow form is tidy. The wording in the rubric has actually been clarified on this point to help people be clear in marking.

So I decided for the "wide" form in total agreement with the fact that:

>The purest tidy for is a little difficult to say, since we don’t have a specific problem to apply it to, but it hinges a little on what a “variable” is- are the variables independent measurements of activity/subject actions (the form the data comes in), or are they members of a set of measurements variables (in a similar way that each activity is a member of the set of activities, as in the diagram, upthread).

That means X, Y, Z variables (as well as time domain x frequency domain, direct measurement x Jerk x Magnitude) were not split into different columns, the original columns (for the mean and standard deviation, of course) were maintained. Also a decision to not melt MEAN and STD was made, considering them as different variables in the same sense that Hadley Wickham has maintained tmax (maximum temperature) and tmin (minimum temperature) as separate variables in his paper Tidy Data [2].

Column headers are required to be human readable, nothing like tBGJMStd but on the other hand tbodygyroscopejerkmagnitudestd is simply not practical. The header rule I applied is based in variable names recommended in several programing languages: starting with lower case words are put together (no spaces or symbols) starting with a capital letter each one: tBodyGyroJerkMagStd. This is a much better balance between usability and readability.

## The **Codebook.md** file

So far in the course only the necessity and the minimum contents of code books were discussed, nothing has been said about formats and styles. Been a newbie in the data science world I prefer to stick to the format I have seen so far until I gain more experience and can decide better. This code book is created in the style of the The American Community Survey data books that have been used for the quizzes.

One thing that code books must have is units for all variables but in this case all values are normalized (as stated in the README.txt file of the original data set). I used the notation '-1..1 normalized value'.

A minimal description of the data transformation is included in the code book since the general criteria and technical details are discussed in both this readme.md file and the run_analysis.R script.

## References

[1] Getting and Cleaning the Assignment by David Hood <https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/>

[2] Wickham H, Tidy Data, Journal of Statistical Software, p.11 <http://vita.had.co.nz/papers/tidy-data.pdf>
