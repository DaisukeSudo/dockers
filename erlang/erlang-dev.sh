export ERLANG_VERSION=21.0.4-alpine
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name erlang-dev \
  --rm -it \
  -w /home/erlang \
  -v $PWD:/home/erlang \
  erlang:$ERLANG_VERSION \
  sh