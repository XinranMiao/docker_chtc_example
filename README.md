# docker_chtc_example

## Write a Dockerfile

## Create a docker image 
```{bash}
# cd to the directory containing a `Dockerfile`
docker build -t {repository name}:{tag} .
# docker build -t xinranmiao/r_example:20221006 .

# test this image
docker run --rm=true {repository name}:{tag} /bin/bash
# docker run -it --rm=true xinranmiao/r_example:20221006 /bin/bash

# push
docker push {repository name}:{tag} 
```

## Useful commands
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
