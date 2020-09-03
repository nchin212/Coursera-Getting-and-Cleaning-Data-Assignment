Coursera: Getting and Cleaning Data Assignment
==============================================

The purpose of this project is to demonstrate the ability to collect,
work with, and clean a data set. The goal is to prepare tidy data that
can be used for later analysis.

Background
----------

One of the most exciting areas in all of data science right now is
wearable computing. Companies like Fitbit, Nike, and Jawbone Up are
racing to develop the most advanced algorithms to attract new users. The
data linked to from the course website represent data collected from the
accelerometers from the Samsung Galaxy S smartphone. More information
about the data can be found in [CodeBook.md](https://github.com/nchin212/Coursera-Getting-and-Cleaning-Data-Assignment/blob/master/CodeBook.md)

Contents
--------

This repository consists of

-   [CodeBook.md](https://github.com/nchin212/Coursera-Getting-and-Cleaning-Data-Assignment/blob/master/CodeBook.md) - A code book that describes the variables, the
    data, and any transformations or work that are performed to clean up
    the data

-   [README.md](https://github.com/nchin212/Coursera-Getting-and-Cleaning-Data-Assignment/blob/master/README.md) - Explains how all of the scripts work and how they
    are connected

-   [run\_analysis.R](https://github.com/nchin212/Coursera-Getting-and-Cleaning-Data-Assignment/blob/master/run\_analysis.R) - Contains script to transform the raw data into
    the tidy data

-   [tidy\_dataset.txt](https://github.com/nchin212/Coursera-Getting-and-Cleaning-Data-Assignment/blob/master/tidy\_dataset.txt) - Contains the tidy dataset created from
    [run\_analysis.R](https://github.com/nchin212/Coursera-Getting-and-Cleaning-Data-Assignment/blob/master/run\_analysis.R)

Packages Required
-----------------

To run the project, the **plyr** and **reshape2** packages are required.
Install them as follows:

    install.packages("plyr")
    install.packages("reshape2")
