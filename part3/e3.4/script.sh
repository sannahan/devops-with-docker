#/bin/bash

echo "Argument one is $1"
git clone https://github.com/$1 ./cloned_repository

echo "Argument two is $2"
docker build ./cloned_repository -t $2

docker login -u $DOCKER_USER -p $DOCKER_PWD

docker push $2
