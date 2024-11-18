# Final Project---Alzheimer's Disease Analysis using OASIS Longitudinal Dataset

## Overview
This repository contains the files and code for the final project report analyzing the OASIS longitudinal dataset. The analysis explores the relationships between demographic factors and cognitive decline.

## Repository Structure
data550_final_project/

├── report.Rmd                # Main report file integrating all component

├── table_code.R              # R script for generating summary tables

├── plot_code.R               # R script for generating visualizations

├── data/

│   ├── cleaned_oasis_longitudinal.csv # oasis dataset

├── Makefile                  # Makefile for automating report generation

├── README.md                 # This file

## How to Generate the Final Report
1. Ensure that all files in the repository are in the correct structure as described above.
2. Run the following command in the terminal:

   ```bash
   
   make

This will execute the Makefile and generate the final report report.html.


## Code Details

### Generating the Summary Table

The summary table is created using the table_code.R script, which:

- Loads the dataset from data/cleaned_oasis_longitudinal.csv.

- Prepares a summary of key demographic and cognitive variables.

- Outputs a table formatted using kableExtra.

### Generating the Figures

All visualizations are created using the plot_code.R script, which:

- Produces a scatter plot of Age vs CDR, stratified by Gender.

- Generates a correlation matrix for key variables.

- Creates a pair plot to visualize relationships between multiple variables.



### Integrated in report.Rmd

The report.Rmd file integrates the table and figures into a cohesive report, with sections for introduction, analysis, and conclusion.



### Contact

For any questions or clarifications, please contact Yuan (Anna) Chen.