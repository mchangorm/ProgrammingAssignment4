#!/usr/bin/env Rscript

## Getting and Cleaning Data Assignment

## run_analysis.R
## by Mark Chang


require(data.table)

# Windows
setwd("C:\\Users\\mchang\\Projects\\ProgrammingAssignment4")

# Mac
# setwd("/Users/mchang/Projects/ProgrammingAssignment4")

path <- getwd()
datasetpath <- file.path(path,"dataset")
datafilename <- "dataFiles.zip"

#if ( !dir.exists(datasetpath))
#{
#    dir.create(datasetpath)
#} else
#{
#   unlink(datasetpath, recursive = TRUE)
#}

# Download file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, file.path(path, datafilename))
unzip(zipfile = datafilename, exdir = path)

file.rename ( from = "UCI HAR Dataset", to = datasetpath)

# Read features
features <- fread("dataset\\features.txt", col.names = c("index", "featurenames"))

## extract only mean and standard deviation from features
## and put them into another variable called measurements
features2 <- grep("([Mm]ean|[Ss]td)", features[, featurenames])
features3 <- features[features2, featurenames]

# Load train dataset; it is the bigger one after all
# try to log only the features (y variables) with std or mean
raw_data_train <- fread("dataset\\train\\X_train.txt")
raw_data_train_wanted <- raw_data_train[, features2, with = FALSE]
data.table::setnames(raw_data_train_wanted,colnames(raw_data_train_wanted),features3)

raw_activity_train <- fread("dataset\\train\\y_train.txt", col.names = c("activity"))
raw_subject_train <- fread("dataset\\train\\subject_train.txt", col.names = c("subjectnum"))

# now bind all the columns from all 3 sheets together
train <- cbind(raw_subject_train,raw_activity_train,raw_data_train_wanted)

# now do the same with the test dataset. rinse and repeat
raw_data_test <- fread("dataset\\test\\X_test.txt")
raw_data_test_wanted <- raw_data_test[, features2, with = FALSE]
data.table::setnames(raw_data_test_wanted,colnames(raw_data_test_wanted),features3)
raw_activity_test <- fread("dataset\\test\\y_test.txt", col.names = c("activity"))
raw_subject_test <- fread("dataset\\test\\subject_test.txt", col.names = c("subjectnum"))
test <- cbind(raw_subject_test,raw_activity_test,raw_data_test_wanted)

final <- rbind(train,test)

## Settle the activity labels now
activitylabels <- fread("dataset\\activity_labels.txt", col.names = c("classlabels","activitynames"))

final[['activity']] <- factor(final[,activity], levels = activitylabels[["classlabels"]], labels = activitylabels[["activitynames"]]
)

final[["subjectnum"]] <- as.factor(final[,subjectnum])

# Now let's get a summary as stated in point (5) of exercise
# recommended tool is aggregate. However, aggregate can only do summary by column
# The question asks for average by both activity AND ALSO subject
# We shall use data table inbuilt melt and dcast functions as stated in 
# https://cloud.r-project.org/web/packages/data.table/vignettes/datatable-reshape.html
# Also the intermediate steps will be written to file for doublechecking

final_long <- melt(final, id = c("subjectnum","activity"))
final_summarized <- dcast(final_long, subjectnum + activity ~ variable, fun.aggregate = mean)

data.table::fwrite(final, file="tidydata-orig.txt", quote = FALSE)
data.table::fwrite(final_long, file="tidydata-long.txt", quote = FALSE)
data.table::fwrite(final_summarized, file="tidydata-summ.txt", quote = FALSE)
