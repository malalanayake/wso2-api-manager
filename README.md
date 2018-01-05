###Running Commands

##Build the new image from the scratch
* Go to the Git repo path and run the following
$> docker build .

##Tag the image to your container image repository
$> docker tag <build_image_name> <docker_hub_user>/<repo_name>

* docker tag 23333ba1b1e8 sysensor/wso2-api-manager

##Push to repository
$> docker push sysensor/wso2-api-manager

