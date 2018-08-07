export HASKELL_VERSION=8.4.3
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name haskell-dev \
  --rm -it \
  -w /home/haskell \
  -v $PWD:/home/haskell \
  haskell:$HASKELL_VERSION \
  sh