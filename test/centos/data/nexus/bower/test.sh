#!/bin/bash

setup () {
  clear
}

init () {
  rm -rf components
  bower --allow-root cache clean
  bower --allow-root cache list
}

install () {
  bower --allow-root update
}

test_offline_install () {
  package=$1
  network=$2

  ip link set $network down
  init
  install $package
  ip link set $network up
}

test_online_install () {
  package=$1
  init
  install $package
}

test_publish () {
  init
  npm install --save-dev bower-nexus3-resolver
  bower --allow-root register nexus-hello-world git://github.com/indolering/hello-world.git -f
}

set -x
test_online_install dummy-package
# can't use `ip linke set xx down` in docker container
# test_offline_install eth0
test_publish
set +x
