export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name firebase-tools \
  --rm -it \
  -w /home/work \
  -v $PWD:/home/work \
  -p 9005:9005 \
  dsudo/firebase-cli:1.0 \
  sh