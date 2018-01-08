## Run Docker Commands

### Build the new image from the scratch
* $> docker build .

### Tag the image to your container image repository
* docker tag <build_image_name> &nbsp; <docker_hub_user>/<repo_name>
<br/><br/>-- $> docker tag 23333ba1b1e8 sysensor/wso2-api-manager

### Push to repository
* docker push <docker_hub_user>/<repo_name>
<br/><br/>--  $> docker push sysensor/wso2-api-manager

### Run container through the image
* docker run -p 9443:9443 -t <docker_hub_user>/<repo_name>
<br/><br/>--  $> docker run -p 9443:9443 -t sysensor/wso2-api-manager

### Commit changes to new image from the running container
* docker commit <container_id> <repo_name>
<br/><br/>--  $> docker commit cadaf620f6d5 sysensor/wso2-api-manager
<br/><br/>--  $> docker push sysensor/wso2-api-manager

### SSH to Container
* docker exec -it <container_id> /bin/bash
<br/><br/>--  $> docker exec -it ef851761c3e3 /bin/bash


## API Manager Commands

