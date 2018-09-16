export POSTGRES_VERSION=10.5-alpine
export POSTGRES_PORT=5432

docker run \
  --name postgres-data \
  -v /var/lib/postgresql/data \
  busybox

docker run \
  --name postgres-dev \
  -d \
  --restart=unless-stopped \
  --volumes-from postgres-data \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=password \
  -p $POSTGRES_PORT:5432 \
  postgres:$POSTGRES_VERSION

docker run \
  --name postgres-client \
  -it \
  --rm \
  --link postgres-dev:dev \
  postgres:$POSTGRES_VERSION \
  psql -h dev -U postgres

# \q
