export GOLANG_VERSION=1.10.3-alpine3.8
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name golang-dev \
  --rm -it \
  -w /home/golang \
  -v $PWD:/home/rugolangst \
  golang:$GOLANG_VERSION \
  sh