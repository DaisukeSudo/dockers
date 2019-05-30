export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name open-jdk-11-dev \
  --rm -it \
  -w /home/java \
  -v $PWD:/home/java \
  adoptopenjdk/openjdk11:alpine \
  sh