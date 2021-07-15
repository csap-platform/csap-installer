#!/bin/bash

registry_name=%REGISTRY_IMAGE%

# import regisry image into docker images
./load_registry.sh

# run the registry (note: can configure registry if needed).
# (we could use a local volume or not...)
docker run -d -p 5000:5000 --restart always --name registry $registry_name

# import and run the skopeo deployer
./populate_registry.sh $1
