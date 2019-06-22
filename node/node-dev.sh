export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name typescript-dev \
  --rm -it \
  -w /home/node \
  -v $PWD:/home/node \
  dsudo/typescript-dev:node-12.4 \
  sh