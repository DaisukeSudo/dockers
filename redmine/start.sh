export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`

time docker-compose up -d && docker logs -f redmine
