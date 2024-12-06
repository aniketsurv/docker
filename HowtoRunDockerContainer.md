how to create mkdocs
study of markdown


### Step1- Create a Dockerfile
- Dockerfile

### Step2 - Build the Docker Image
- docker build -t my-node-app .
- docker build -t my-node-app . ("my-node-app" docker image name)

### Step 5: Run the Docker Container
```bash
docker run -p 3000:3000 my-node-app
```

### Step 6: Verify the Container running or not
docker ps
or
docker ps -a

### Step 6: Stop the container
docker stop <container_id>

### List Images
- docker images
- docker image ls

### Default Image Storage Location
/var/lib/docker/images/

### check the storage driver being used by Docker by running:
docker info | grep Storage

### Remove unused images:
docker image prune

### Remove all unused images:
docker image prune -a

### Remove a specific image:
docker rmi <image_name_or_id>


###  Run the multiple Docker Container with single image
docker run -d -p 3000:3000 my-node-app
docker run -d -p 3001:3000 my-node-app

###  Run the Docker Container and auto remove container after stop
docker run -d --rm -p 3002:3000 my-node-app

###  Run the Docker Container with name
docker run -d --rm --name "mywebapp" -p 3002:3000 my-node-app


### --------------------------------------------------------- ###

### how to image transfer/push local to global/hub.docker.com
### sign up hub.docker.com
### create repository

### Step1- Login to Docker Hub
- docker login

### Step2- Tag the Image
- docker tag <local_image> <username>/<repository>:<tag>
- or
- docker tag myapp:latest mydockerhubusername/myapp:latest
- docker tag my-node-app:latest as0903/docker_node:02

### Step3- Push the Image
- docker push <username>/<repository>:<tag>
- or
- docker push mydockerhubusername/myapp:latest
- docker push as0903/docker_node:02


### -------------------------------------------------------------------###
### create volume
- docker run -d --rm -v /path/on/host:/path/in/container my_image
- or
- docker run -d -v myVolume:/myDirrr/ --rm -p 3002:3000 my-node-app

### List Volumes
- docker volume ls

### Inspect a Volume
docker volume inspect my_volume

### Remove a Volume:
- docker volume rm my_volume

### Remove All Unused Volumes
- docker volume prune


### ------------------------------------------------------------------###
### Save image to tarball
docker save -o my-image.tar my-image:latest

### Load image from tarball
docker load -i my-image.tar

### Size of tar
- du -sch *.tar