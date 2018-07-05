export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name iolang-dev \
  --rm -it \
  -v $PWD:/home/io \
  -w /home/io \
  dsudo/iolang:v20151111-ubuntu16.04 \
  bash