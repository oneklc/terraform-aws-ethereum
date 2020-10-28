#!/bin/bash -xe

# Start mining
docker run -it ${docker_image_name} \
-S ${pool_host} \
-O ${wallet_address}.${worker_name}/${email}
