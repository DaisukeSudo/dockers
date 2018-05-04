export JEKYLL_VERSION=3.8
docker run \
  --name jekyll-builder \
  -it \
  -v $PWD:/srv/jekyll \
  jekyll/jekyll:$JEKYLL_VERSION \
  jekyll build --destination docs