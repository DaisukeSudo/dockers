export ELIXIR_VERSION=1.7.1-alpine
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name elixir-dev \
  --rm -it \
  -w /home/elixir \
  -v $PWD:/home/elixir \
  elixir:$ELIXIR_VERSION \
  sh