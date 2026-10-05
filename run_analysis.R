#!/usr/bin/env Rscript

## Getting and Cleaning Data Assignment

## run_analysis.R
## by Mark Chang


#require(data.table)
require(dplyr)

setwd("/Users/mchang/Projects/ProgrammingAssignment4")
path <- getwd()
datasetpath <- file.path(path,"dataset")
datafilename <- "dataFiles.zip"

if( !dir.exists(datasetpath))
{
    dir.create(datasetpath)
}
else {
   unlink(datasetpath, recursive = TRUE)
}

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, file.path(path, datafilename))
unzip(zipfile = datafilename, exdir = path)

file.rename ( from = "UCI HAR Dataset", to = datasetpath)

raw_data_test <- read.table("dataset/test/X_test.txt")
raw_data_train <- read.table("dataset/train/X_train.txt")

merged_data <- rbind(raw_data_test,raw_data_train)

features <- read.table("dataset/features.txt")
