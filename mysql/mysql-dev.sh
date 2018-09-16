export MYSQL_VERSION=8.0
export MYSQL_PORT=3306

docker run \
  --name mysql-data \
  -v /var/lib/mysql \
  busybox

docker run \
  --name mysql-dev \
  -d \
  --restart=unless-stopped \
  --volumes-from mysql-data \
  -e MYSQL_ROOT_PASSWORD=password \
  -p $MYSQL_PORT:3306 \
  mysql:$MYSQL_VERSION

docker run \
  --name mysql-client \
  -it \
  --rm \
  --link mysql-dev:dev \
  mysql:$MYSQL_VERSION \
  mysql -h dev -u root -p
