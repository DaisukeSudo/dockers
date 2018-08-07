export CLOJURE_VERSION=lein-2.8.1-alpine
export PWD=`pwd | sed -r 's/\/mnt(.*)/\1/'`
docker run \
  --name clojure-dev \
  --rm -it \
  -w /home/clojure \
  -v $PWD:/home/clojure \
  clojure:$CLOJURE_VERSION \
  sh