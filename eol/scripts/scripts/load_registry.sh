#!/bin/bash

registry_filename=%REGISTRY_FILENAME%

# import regisry image into docker images
docker load --input $registry_filename
