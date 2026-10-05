#!/usr/bin/env Rscript

## Getting and Cleaning Data Assignment

## run_analysis.R
## by Mark Chang


#require(data.table)
require(dplyr)
# Windows
# setwd("C:/Users/mchang/Projects/ProgrammingAssignment4")

# Mac
setwd("/Users/mchang/Projects/ProgrammingAssignment4")
path <- getwd()
datasetpath <- file.path(path,"dataset")
datafilename <- "dataFiles.zip"

 if ( !dir.exists(datasetpath))
{
    dir.create(datasetpath)
} else
{
   unlink(datasetpath, recursive = TRUE)
}

# Download file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, file.path(path, datafilename))
unzip(zipfile = datafilename, exdir = path)

file.rename ( from = "UCI HAR Dataset", to = datasetpath)

# Merge datasets
#raw_data_test <- read.table("dataset/test/X_test.txt")
#raw_data_train <- read.table("dataset/train/X_train.txt")
#merged_data <- rbind(raw_data_test,raw_data_train)
#unlink(path,"getdata_projectfiles_UCI HAR Dataset.zip")

# Read features and activity labels
features <- read.table("dataset/features.txt", col.names = c("index", "featurenames"))
activitylabels <- read.table("dataset/activity_labels.txt", col.names = c("classlabels","activitynames"))

## extract only mean and standard deviation from features
## and put them into another variable called measurements
## TODO
## cannot seem to call featurenames, only can use 2
features2 <- grep("([Mm]ean|[Ss]td)", features[, 2])
measurements <- features[features2, 2]

## load train dataset with only required colunms measurements
raw_data_train <- read.table("dataset/train/X_train.txt", features2)
