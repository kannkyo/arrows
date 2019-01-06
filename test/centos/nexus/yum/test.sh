#!/bin/bash

setup () {
  clear
  cat nexus.repo > /etc/yum.repos.d/nexus.repo
}

init () {
  yum clean all && rm -rf /var/cache/yum/*
  yum makecache --disablerepo=* --enablerepo=nexusrepo
}

install() {
  package=$1
  yum remove -y --disablerepo=* --enablerepo=nexusrepo $package
  yum install -y --disablerepo=* --enablerepo=nexusrepo $package
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
test_online_install samba
# can't use `ip linke set xx down` in docker container
# test_offline_install samba eth0
# no support publish
# test_publish
set +x
