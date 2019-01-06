#!/bin/bash

test () {
  cd $1
  sh test.sh
  cd ../
}

test bower
# test docker
test maven2
test npm
test pypi
test yum
