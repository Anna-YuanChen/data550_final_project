# Final Project---Alzheimer's Disease Analysis using OASIS Longitudinal Dataset

## Overview
This project analyzes the OASIS longitudinal dataset to generate statistical summaries, visualizations, and a comprehensive report. The final report is an HTML file created using RMarkdown, with a fully reproducible workflow managed by renv for package management and a Makefile for automation.

## Getting Started
To reproduce this project, you need the following:

1. R installed on your machine.

2. The renv package to manage the R package environment.

3. GNU Make installed to use the Makefile.

4. Docker installed on your system. You can download it from [Docker's website](https://www.docker.com/).



## Repository Structure

- `Dockerfile`: Defines the Docker image for the project.
- `Makefile`: Automates Docker commands and report generation.
- `report.Rmd`: RMarkdown file containing the analysis and report structure.
- `plot_code.R`: Script to generate plots.
- `table_code.R`: Script to generate the summary table.
- `data/clean_oasis_longitudinal.csv`: Dataset used in the analysis.
- `renv.lock`: Captures R package dependencies for reproducibility.
- `report/`: Directory to store the generated report.
- `renv/`: Directory for the project’s renv package environment.


## DockerHub Link
The Docker image for this project is available on DockerHub:  
[DockerHub - data550-final-project](https://hub.docker.com/repository/docker/yuanchen828/data550-final-project/general)  


## Docker Instructions

### Building the Docker Image

To build the Docker image, navigate to the project directory and run the following command in your terminal:

```bash

docker build -t data550-final-project .

This will create a Docker image named data550-final-project.



### Running the Docker Container to Create the Report

To generate the report, run the Docker container using the following command:

```bash

make docker-run

This command:

- Mounts the local report/ directory to the container’s /usr/src/app/report directory.

- Ensures the generated HTML report is stored in the report/ folder.

After execution, you can find the HTML report in the report/ directory.


## Makefile Instructions

The Makefile automates common tasks. Below are the targets included:

### 1. Build the Docker image:

```bash

make docker-build


### 2. Run the Docker container to generate the report:

```bash

make docker-run


### 3. Generate the Report Locally:

If you prefer to generate the report without Docker, use:

```bash

make all


### 4. Clean up all generated files:

To remove all generated files:

```bash

make clean


### Notes for Windows Users

If you are using Windows with Git Bash, remember to add an extra / before file paths when mounting directories. For example:

```bash

docker run --rm -v //c/Users/YourName/project/report:/usr/src/app/report data550-final-project


### Additional Notes

- Ensure the data/clean_oasis_longitudinal.csv file exists in the data/ directory.

- If you encounter Docker-related issues, verify that the Docker daemon is running and accessible.

- For debugging, you can inspect the container logs using:

```bash

docker logs <container-id>



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