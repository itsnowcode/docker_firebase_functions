# docker_firebase_functions
Docker for firebase functions

## build image
docker build -t itsnow/firebase_functions:{TAG} .

## run container
docker run -it -d --name {CONTAINER_NAME} -v git:/home/node/git itsnow/firebase_functions:{TAG}

## execute container
docker exec -it {CONTAINER_NAME} sh

## push docker hub
docker push itsnow/firebase_functions:{TAG}
