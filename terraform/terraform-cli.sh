export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`

docker run \
  --name terraform-cli \
  --rm -it \
  -w /home/terraform \
  -v $PWD:/home/terraform \
  --entrypoint sh \
  hashicorp/terraform:light

# alias terraform="docker run --rm -it -w /home/tf -v `echo $PWD | sed -r 's/\/mnt(.*)/\1/'`:/home/tf hashicorp/terraform:light"

# terraform -version
