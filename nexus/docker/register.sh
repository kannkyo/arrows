#!/bin/bash

hostname=localhost
port=48082

pull() {
  docker pull $hostname:$port/$1
  docker rmi $hostname:$port/$1
}

pull "jenkins:latest"
pull "nginx:latest"
pull "gitlab/gitlab-ce:latest"
pull "gitlab/gitlab-runner:latest"
pull "redmine:latest"
pull "mysql:5.7"
pull "sonatype/nexus3:latest"
pull "jenkins:latest"
pull "xetusoss/archiva"

