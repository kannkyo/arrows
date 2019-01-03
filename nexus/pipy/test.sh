#!/bin/bash

pipy_init () {
  echo pipy_init
}

pipy_install() {
  sudo pip install --no-cache-dir --index-url http://localhost/nexus/repository/pypi-group/simple $1
  sudo pip uninstall $1 -y
}

test_offline_install () {
  network=$1

  sudo ip link set $1 down
  pipy_init
  pipy_install piplint
  sudo ip link set $1 up
}

test_online_install () {
  pipy_init
  pipy_install piplint
}

test_publish () {
  git clone https://github.com/BillMills/python-package-example.git
  twine upload --repository-url http://localhost/nexus/repository/pypi-hosted/ python-package-example/dist/*
  rm -rf python-package-example
}

set -x
sudo pip install twine
test_online_install
test_offline_install eth0
test_publish
set +x
