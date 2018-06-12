export NGINX_VERSION=mainline-alpine
export PORT=8080
export PWD=/c/nginx/html
docker run \
  --name simple-nginx \
  --rm -it \
  -p $PORT:80 \
  -v $PWD:/usr/share/nginx/html:ro \
  nginx:$NGINX_VERSION