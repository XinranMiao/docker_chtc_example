#xinranmiao/r_example:20221006
FROM rocker/tidyverse

RUN apt-get update
RUN apt-get install -y git vim

# install packages you need
RUN Rscript -e "install.packages(c('devtools', 'knitr'))"


RUN chmod -R 777 /usr/local/lib/ /root/ /tmp/
ENV HOME /root/
ENV USER root
