export NODE_VERSION=12.4-alpine
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name typescript-dev \
  --rm -it \
  -w /home/node \
  -v $PWD:/home/node \
  node:$NODE_VERSION \
  sh