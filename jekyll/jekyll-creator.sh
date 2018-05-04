export JEKYLL_VERSION=3.8
docker run \
  --name jekyll-creator \
  --rm -it \
  -v $PWD:/srv/jekyll \
  jekyll/jekyll:$JEKYLL_VERSION \
  jekyll new .