FROM nvidia/cuda:11.4.0-base-ubuntu20.04

# Add some dependencies
RUN apt-get clean \
  && apt-get update -y \
  && DEBIAN_FRONTEND="noninteractive" apt-get install -y --no-install-recommends curl git build-essential vim ffmpeg libsm6 libxext6 wget unzip


# Download miniconda and install in /opt/miniconda
RUN curl -O https://repo.anaconda.com/miniconda/Miniconda3-py38_4.8.2-Linux-x86_64.sh \
  && bash Miniconda3-py38_4.8.2-Linux-x86_64.sh -b -p /opt/miniconda \
  && rm Miniconda3-py38_4.8.2-Linux-x86_64.sh

# Activate base conda environment and create example-environment from environment.yml
COPY environment.yml .
RUN . /opt/miniconda/bin/activate \
  && conda env create -f environment.yml \
  && rm environment.yml