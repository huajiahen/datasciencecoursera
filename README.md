Human Activity Recognition Using Smartphones Data 
=======

This script is aim to clean up 'Human Activity Recognition Using Smartphones' Data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones . 

This script was written in R under R version 3.1.1. To make the script work correctly, you should have your R installed these packeges: tidyr, dplyr, reshape2. You may replace 'reshape2' with 'reshape', but you should also change the 3rd line of file `run_analysis.R` to `library(reshape)` if you do so.

You must have the original dataset before running the script. After you download the data, extract the content of file to your working directory. You should keep the data folder name unchanged (which is `UCI HAR Dataset`). Run `run_analysis.R` in your working directory and you will get the merged data and cleaned data after variable names `mergedData` and `tidyData`.

The description of column names in `mergedData` and `tidyData` is in `CodeBook.md`.

# Files Description

- README.md
- CodeBook.md: Code book describes the variables, the data, and the transformations to clean up the data.
- run_analysis.R: The script which can clean up the data.

# License

The code is distributed under MIT license. 

William Huang. Dec 2014.
