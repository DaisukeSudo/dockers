docker run \
  --name simple-nginx \
  --rm -it \
  -p 8080:80 \
  -v /c/nginx/html:/usr/share/nginx/html:ro \
  nginx:mainline-alpine