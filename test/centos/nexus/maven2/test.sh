#!/bin/bash

setup () {
  clear
}

init () {
  rm -rf target
}

test_offline_install () {
  network=$1

  sudo ip link set $1 down
  init
  mvn dependency:purge-local-repository
#  mvn install
  sudo ip link set $1 up
}

test_online_install () {
  init
  mvn dependency:purge-local-repository
}

test_publish () {
  init
  mvn clean deploy -Dmaven.test.skip=true --settings ./settings.xml
}

set -x
setup
test_online_install
# can't use `ip linke set xx down` in docker container
# test_offline_install eth0
test_publish
set +x
