export NODE_VERSION=8.16-alpine
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name node-dev \
  --rm -it \
  -w /home/node \
  -v $PWD:/home/node \
  node:$NODE_VERSION \
  sh