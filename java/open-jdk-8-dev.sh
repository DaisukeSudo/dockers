export JAVA_VERSION=8-jdk-alpine
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name open-jdk-8-dev \
  --rm -it \
  -w /home/java \
  -v $PWD:/home/java \
  openjdk:$JAVA_VERSION \
  sh