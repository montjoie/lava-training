# lava-training
Docker image for LAVA training

# Prerequisites
Package docker

# build image

docker build lava-training -t lava-training

# Run image
docker run --detach lava-training

# play with it
docker exec -ti $(docker ps |grep lava-training | cut -d' ' -f1) bash
