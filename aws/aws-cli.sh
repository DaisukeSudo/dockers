mkdir -p $HOME/.aws
export HOME=`echo $HOME | sed -r 's/\/mnt(.*)/\1/'`

docker run \
  --name aws-cli \
  --rm -it \
  -v $HOME/.aws:/root/.aws \
  --entrypoint sh \
  dsudo/aws-cli:1.0

# alias aws="docker run --rm -it -v `echo $HOME | sed -r 's/\/mnt(.*)/\1/'`/.aws:/root/.aws dsudo/aws-cli:1.0"

# aws configure
