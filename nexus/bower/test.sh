#!/bin/bash

bower_init () {
  rm -rf bower_components
  bower cache clean
  bower cache list
}

test_offline_install () {
  network=$1

  sudo ip link set $1 down
  bower_init
  bower update
  sudo ip link set $1 up
}

test_online_install () {
  bower_init
  bower update
}

test_publish () {
  bower_init
  npm install --save-dev bower-nexus3-resolver
  bower register nexus-hello-world git://github.com/indolering/hello-world.git -f
}

set -x
test_online_install
test_offline_install eth0
test_publish
set +x
