#!/bin/bash

npm_init () {
  rm -rf node_modules
  sudo npm cache clean --force
}

test_offline_install () {
  network=$1

  sudo ip link set $1 down
  npm_init
  npm update
  sudo ip link set $1 up
}

test_online_install () {
  npm_init
  npm update
}

test_publish () {
  npm_init

  git clone https://github.com/rms1000watt/hello-world-npm.git
  cd hello-world-npm

  cat > .npmrc << "EOF"
email=foo@example.com
always-auth=true
_auth=YWRtaW46YWRtaW4xMjM=
registry=http://localhost/nexus/repository/npm-hosted/
EOF
  npm publish

  cd ../
  rm -rf hello-world-npm
}

set -x
test_offline_install eth0
set +x
