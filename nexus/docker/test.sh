#!/bin/bash

hostname=localhost
pull_port=48082
push_port=48083

rmi_and_pull() {
  docker pull $1
  docker run $1
  docker rmi $1
}

test_offline_pull () {
  network=$1

  sudo ip link set $1 down
  docker login $hostname:$pull_port
  rmi_and_pull $hostname:$pull_port/hello-world
  sudo ip link set $1 up
}

test_online_pull () {
  rmi_and_pull hello-world
}

# test_publish () {
#   docker login $hostname:$push_port
#   docker push localhost:48083/hello-world2
# }

set -x
test_online_pull
test_offline_pull eth0
# test_publish
set +x
