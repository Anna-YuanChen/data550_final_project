# Use a specific ARM64-compatible version of Rocker R
FROM rocker/r-ver:4.4.2

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libxml2-dev \
    libssl-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    pandoc \
    && apt-get clean

# Set working directory
WORKDIR /usr/src/app

# Copy project files
COPY . .

# Install R and renv dependencies
RUN Rscript -e "install.packages('renv', repos='https://cloud.r-project.org')"
RUN Rscript -e "renv::restore()"

# Default command to generate the report
CMD ["make", "all"]