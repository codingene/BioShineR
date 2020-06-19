FROM rocker/shiny:4.0.0
LABEL maintainer="Sangram Keshari Sahu <sangramsahu15@gmail.com>"
RUN apt-get update &&\
  apt-get install libxml2-dev libssl-dev -y 
RUN R -e 'install.packages(c("remotes","BiocManager"))' \
 && R -e 'BiocManager::install(version = "3.11")'
