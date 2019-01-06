#!/bin/bash

setup () {
  clear
  pip install twine
  hostname=nexus:8081
}

init () {
  echo init
}

install() {
  index_url=http://$hostname/nexus/repository/pypi-group/simple
  pip install --trusted-host nexus --no-cache-dir --index-url $index_url $1
  pip uninstall -y $1
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
  git clone https://github.com/BillMills/python-package-example.git

  repository_url=http://$hostname/nexus/repository/pypi-hosted/
  package=python-package-example/dist/*
  twine upload --repository-url $repository_url -u admin -p admin123 $package
  rm -rf python-package-example
}

set -x
setup
test_online_install piplint
# can't use `ip linke set xx down` in docker container
# test_offline_install piplint eth0
test_publish
set +x
