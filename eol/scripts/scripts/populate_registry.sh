#!/bin/bash

registry_deploy_name=%REGISTRY_DEPLOY_IMAGE%
registry_deploy_filename=%REGISTRY_DEPLOY_FILENAME%

# import and run the skopeo deployer
docker load --input $registry_deploy_filename

docker run --name reg_deploy -v `pwd`/work:/var/work -v `pwd`:/var/images -e "DOCKER_IMAGE_FILE=${2-%IMAGES_FILENAME%}" -e "DEPLOY_REGISTRY=${1-docker://172.17.0.1:5000}" $registry_deploy_name

