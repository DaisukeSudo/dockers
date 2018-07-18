export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name prolog-dev \
  --rm -it \
  -v $PWD:/home/prolog \
  -w /home/prolog \
  dsudo/gprolog:latest-ubuntu16.04 \
  bash