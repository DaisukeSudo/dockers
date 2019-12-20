export DOTNET_VERSION=3.1-bionic
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name dotnet-dev \
  --rm -it \
  -w /home/dotnet \
  -v $PWD:/home/dotnet \
  mcr.microsoft.com/dotnet/core/sdk:$DOTNET_VERSION \
  bash