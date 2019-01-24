#!/bin/bash

setup () {
  clear
  cp sources.list /etc/apt
}

init () {
  apt-get clean
  rm -rf /var/lib/apt/lists/*
}

install () {
  package=$1
  apt remove -y $package
  apt update
  apt install -y $package
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
  echo test_publish
}

set -x
setup
test_online_install curl
test_offline_install curl eth0
# test_publish
set +x
