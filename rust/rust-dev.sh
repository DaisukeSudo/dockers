export RUST_VERSION=1.28.0-stretch
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name rust-dev \
  --rm -it \
  -w /home/rust \
  -v $PWD:/home/rust \
  rust:$RUST_VERSION \
  sh