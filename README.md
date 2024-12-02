# Final Project---Alzheimer's Disease Analysis using OASIS Longitudinal Dataset

## Overview
This project analyzes the OASIS longitudinal dataset to generate statistical summaries, visualizations, and a comprehensive report. The final report is an HTML file created using RMarkdown, with a fully reproducible workflow managed by renv for package management and a Makefile for automation.

## Getting Started
To reproduce this project, you need the following:

1. R installed on your machine.

2. The renv package to manage the R package environment.

3. GNU Make installed to use the Makefile.


## Repository Structure
data550_final_project/

├── report.Rmd                # RMarkdown file containing the analysis and structure of the report

├── table_code.R              # R script for generating summary tables

├── plot_code.R               # R script for generating visualizations

├── data/

│   ├── cleaned_oasis_longitudinal.csv # oasis dataset

├── Makefile                  # Makefile for automating report generation

├── README.md                 # This file

├── renv.lock                 # Lock file capturing the package versions and dependencies for reproducibility

├── renv/                     # Directory for the project’s renv package environment


## Instructions for Reproducibility
1. Ensure that all files in the repository are in the correct structure as described above.

2. Synchronize the Package Repository

- Install the renv package (if not already installed):install.packages("renv")

- Restore the project-specific package environment:make install

- Alternatively, run the following R command:renv::restore()

This ensures that all the required packages and their versions are synchronized for reproducibility.

3. Run the following command in the terminal:

   ```bash
   
   make all

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