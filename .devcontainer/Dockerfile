FROM rocker/r-ver:4.4.0

RUN apt-get update && apt-get install -y \
    git \
    curl \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libfontconfig1-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('targets','tarchetypes','tidyverse','yaml','here','fs','cli','quarto','testthat'), repos='https://cloud.r-project.org')"
