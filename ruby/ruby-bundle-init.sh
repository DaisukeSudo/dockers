export RUBY_VERSION=2.5.1-alpine3.7
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name ruby-bundle-init \
  --rm -it \
  -v $PWD:/usr/src \
  -w /usr/src \
  ruby:$RUBY_VERSION \
  bundle init
