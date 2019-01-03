#!/bin/bash

mvn_init () {
  rm -rf target
}

test_offline_install () {
  network=$1

  sudo ip link set $1 down
  mvn_init
  mvn dependency:purge-local-repository
#  mvn install
  sudo ip link set $1 up
}

test_online_install () {
  mvn_init
  mvn dependency:purge-local-repository
}

test_publish () {
  mvn_init
  mvn clean deploy -Dmaven.test.skip=true --settings ./settings.xml
}

set -x
test_online_install
test_offline_install eth0
test_publish
set +x
