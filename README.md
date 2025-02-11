# Datasets
All 12 datasets used in `Cluster2Dist: Learning Distance Structures from Clusters for Robust Categorical Data Clustering` can be found in  the `Data` folder. 
# Code information

All code is written in Matlab 2022a. Each section serves the following purpose:

- The `Validity_Indices` folder contains code for evaluating clustering performance.
- The `DiSC` folder details the code of the DiSC algorithm.

The script information in the `DiSC` file are as follows:
- The `initialization.m` initialize `Q` and `mode`.
- The `DiSC.m` file is the main component of the DiSC algorithm and executes the outer loop.
- The `IDiSC.m` file implements the inner loop function of the DiSC algorithm.
- The `DiSCD.m` file is responsible for inferring the relation tree and tuning the Personalized cluster distance matrix.

Finally, the `Execute_Clustering.m` file executes the entire DiSC algorithm on the provided dataset.

# How to run
 - Ensure that the `DiSC Source Code` folder has been added to the execution path by right-clicking the folder, selecting `Add to Path`, and then left-clicking `Selected Folders and Subfolders`.
 - Run the `Execute_Clustering.m` file, and the results will be displayed in the command line window.
