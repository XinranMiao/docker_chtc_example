FROM nvidia/cuda:10.2-base-ubuntu18.04

# Add some dependencies
RUN apt-get clean && apt-get update -y -qq \
  && apt-get install --yes --no-install-recommends curl git build-essential vim ffmpeg libsm6 libxext6




# Install conda and python packages
RUN curl -O https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh \
  && bash Miniconda3-py39_4.9.2-Linux-x86_64.sh -b -p /opt/miniconda \
  && rm Miniconda3-py39_4.9.2-Linux-x86_64.sh

COPY environment.yml .

RUN . /opt/miniconda/bin/activate \
  && conda env create -f environment.yml\
  && rm environment.yml

# This image has been pushed as
# xinranmiao/gpu_python_example:2022100903