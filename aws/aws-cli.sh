mkdir -p $HOME/.aws
export HOME=`echo $HOME | sed -r 's/\/mnt(.*)/\1/'`

# If you want to use shell
<< CO
docker run \
  --name aws-cli \
  --rm -it \
  -v $HOME/.aws:/root/.aws \
  --entrypoint sh \
  dsudo/aws-cli:1.0
CO

# Alias is useful
# It will be a happy addition to .bashrc
alias aws=" docker run --rm -it -v $HOME/.aws:/root/.aws dsudo/aws-cli:1.0"

# Setting up the AWS CLI
aws configure
