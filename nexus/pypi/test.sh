#!/bin/bash

pypi_init () {
  echo pypi_init
}

pypi_install() {
  sudo pip install --no-cache-dir --index-url http://localhost/nexus/repository/pypi-group/simple $1
  sudo pip uninstall $1 -y
}

test_offline_install () {
  network=$1

  sudo ip link set $1 down
  pypi_init
  pypi_install piplint
  sudo ip link set $1 up
}

test_online_install () {
  pypi_init
  pypi_install piplint
}

test_publish () {
  git clone https://github.com/BillMills/python-package-example.git
  twine upload --repository-url http://localhost/nexus/repository/pypi-hosted/ -u admin -p admin123 python-package-example/dist/*
  rm -rf python-package-example
}

set -x
sudo pip install twine
test_online_install
test_offline_install eth0
test_publish
set +x
