#!/bin/bash

setup () {
  clear
}

init () {
  rm -rf node_modules
  npm cache clean --force
}

install () {
  npm update
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

  git clone https://github.com/rms1000watt/hello-world-npm.git
  cd hello-world-npm

  cat ../publish.npmrc > .npmrc
  npm publish

  cd ../
  rm -rf hello-world-npm
}

set -x
setup
# can't use `ip linke set xx down` in docker container
# test_offline_install dummy-package eth0
test_online_install dummy-package
test_publish
set +x
