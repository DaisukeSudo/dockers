export PYTHON_VERSION=3.7.0-alpine3.7
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name python-dev \
  --rm -it \
  -w /home/python \
  -v $PWD:/home/python \
  python:$PYTHON_VERSION \
  sh