#!/bin/bash

# downloads a repository from GitHub, builds a Dockerfile located in the root 
# and then publishes it into the Docker Hub.

if [ $# -ne 2 ]; then
  echo "Usage: $0 <https://github.com/user/repository.git> <docker_user/repository:tag>"
  exit 1
fi

github_repo=$1
dockerhub_repo=$2

# Clone GitHub repository
git clone $github_repo
repo_name=$(basename $github_repo .git)
cd $repo_name

# Create Dockerfile from https://github.com/mluukkai/express_app
echo "FROM node:16" > Dockerfile
echo "COPY . ." >> Dockerfile
echo "RUN npm install" >> Dockerfile
echo "CMD node index.js" >> Dockerfile

# Build Docker image
docker build -t $dockerhub_repo .

# Login to Docker Hub using environment variables
docker login -u $DOCKER_USER -p $DOCKER_PWD

# Push image to the Docker Hub
docker push $dockerhub_repo

# Remove local image
docker image rm $dockerhub_repo

# Clean up
cd ..
rm -rf $repo_name

echo "Done!"