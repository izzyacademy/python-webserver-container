## Clone the Repo

```shell
git clone git@github.com:izzyacademy/python-webserver-container.git

# Navigate into the folder
cd python-webserver-container/

# Log Into DockerHub
docker login -u username -p password
```

## CREATING VERSION 1 OF THE APP ########

In the <head> section of the index.html file change the stylesheets to /index.v1.css and save your change
<link rel="stylesheet" type="text/css" href="/index.v1.css" />

```shell
# Build the Docker Image
docker build -t izzyacademy/nginxserver:v1 

# Run the Image and Verify that It works
docker run -p 80:80 izzyacademy/nginxserver:v1

# Navigate to the Web App and Verify that it works
http://localhost

# Terminate the Container Image by finding the active docker container and kill the container
docker ps
docker kill <container_id>
```

## CREATING VERSION 2 OF THE APP ########

In the <head> section of the index.html file change the stylesheets to /index.v2.css and save your change
<link rel="stylesheet" type="text/css" href="/index.v2.css" />

```shell
# Build the Docker Image
docker build -t izzyacademy/nginxserver:v2

# Run the Image and Verify that It works
docker run -p 80:80 izzyacademy/nginxserver:v2

# Navigate to the Web App and Verify that it works
http://localhost

# Terminate the Container Image by finding the active docker container and kill the container
docker ps
docker kill <container_id>
```

## CREATING VERSION 3 OF THE APP ########
In the <head> section of the index.html file change the stylesheets to /index.v3.css and save your change
<link rel="stylesheet" type="text/css" href="/index.v3.css" />

```shell
# Build the Docker Image
docker build -t izzyacademy/nginxserver:v3

# Run the Image and Verify that It works
docker run -p 80:80 izzyacademy/nginxserver:v3

# Navigate to the Web App and Verify that it works
http://localhost

# Terminate the Container Image by finding the active docker container and kill the container
docker ps
docker kill <container_id>
```

## CREATING VERSION 4 OF THE APP ########
In the <head> section of the index.html file change the stylesheets to /index.v4.css and save your change
<link rel="stylesheet" type="text/css" href="/index.v1.css" />

```shell
# Build the Docker Image for V4 and Latest
docker build -t izzyacademy/nginxserver:v4
docker build -t izzyacademy/nginxserver:latest

# Run the Image and Verify that It works
docker run -p 80:80 izzyacademy/nginxserver:v4

# Navigate to the Web App and Verify that it works
http://localhost

# Terminate the Container Image by finding the active docker container and kill the container
docker ps
docker kill <container_id>
```

## PUSHING THE IMAGES TO DOCKERHUB ########

Now you can publish the different tags to DockerHub

```shell
docker push izzyacademy/nginxserver:v1
docker push izzyacademy/nginxserver:v2
docker push izzyacademy/nginxserver:v3
docker push izzyacademy/nginxserver:v4
docker push izzyacademy/nginxserver:latest 
```
