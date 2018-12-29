#!/bin/bash

url=http://localhost/nexus/repository/pypi-group/simple

install() {
  sudo pip install --index-url $url $1
  sudo pip uninstall $1 -y
}

install piplint

