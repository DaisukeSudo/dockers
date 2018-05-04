export JEKYLL_VERSION=3.8
docker run \
  --name jekyll-server \
  -it \
  -v $PWD:/srv/jekyll \
  -p 4000:4000 \
  jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve --watch --force_polling

# docker start -i jekyll-server
