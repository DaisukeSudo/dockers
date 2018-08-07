export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name scala-dev \
  --rm -it \
  -w /home/scala \
  -v $PWD:/home/scala \
  hseeberger/scala-sbt \
  bash
