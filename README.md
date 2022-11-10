# docker_chtc_example

## Toy examples

R example: [Dockerfile](https://github.com/XinranMiao/docker_chtc_example/blob/main/R_example/Dockerfile), [CHTC submit file](https://github.com/XinranMiao/docker_chtc_example/blob/main/R_example/r_example.submit), [CHTC shell script](https://github.com/XinranMiao/docker_chtc_example/blob/main/R_example/r_example.sh)

pytorch-cuda example: [Dockerfile](https://github.com/XinranMiao/docker_chtc_example/blob/main/gpu_python_example/Dockerfile), [environment configuration](https://github.com/XinranMiao/docker_chtc_example/blob/main/gpu_python_example/environment.yml), [CHTC submit file](https://github.com/XinranMiao/docker_chtc_example/blob/main/gpu_python_example/gpu_python_example.submit), [CHTC shell script](https://github.com/XinranMiao/docker_chtc_example/blob/main/gpu_python_example/gpu_python_example.sh)


pytorch-cuda example 2: [Dockerfile](https://github.com/XinranMiao/docker_chtc_example/blob/main/gpu_python_example2/Dockerfile), [environment configuration](https://github.com/XinranMiao/docker_chtc_example/blob/main/gpu_python_example2/environment.yml), [CHTC submit file](https://github.com/XinranMiao/docker_chtc_example/blob/main/gpu_python_example2/example2.submit), [CHTC shell script](https://github.com/XinranMiao/docker_chtc_example/blob/main/gpu_python_example2/example2.sh)

## Write a Dockerfile

[Dockerfile best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)


## Create a docker image 
```{bash}
# cd to the directory containing a `Dockerfile`
docker build -t {repository name}:{tag} .
# docker build -t xinranmiao/r_example:20221006 .

# test this image
docker run -it --rm=true {repository name}:{tag} /bin/bash
# docker run -it --rm=true xinranmiao/r_example:20221006 /bin/bash

# push
docker push {repository name}:{tag} 
```

## Other useful commands
```{bash}
# list all images
docker image ls

# remove an image
docker image rm -f {repository name}:{tag}
# docker image rm -f xinranmiao/gpu_python_example:20221006

# or, find the tag id using `docker image ls`, and
docker image rm -f {tagid}
# docker image rm -f 92dbf6ddeabc

# remove unused data
docker system prune
```
