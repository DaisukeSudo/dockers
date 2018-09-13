export DOTNET_VERSION=2.2-sdk
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name dotnet-dev \
  --rm -it \
  -w /home/dotnet \
  -v $PWD:/home/dotnet \
  microsoft/dotnet:$DOTNET_VERSION \
  bash