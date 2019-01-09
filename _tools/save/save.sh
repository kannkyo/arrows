#!/bin/bash

save () {
  image=$1
  docker save $image | gzip -c > savedata/$image.tar.gz
}

set -x
save arrows_gitlab
save arrows_gitlab-runner
save arrows_gitlab-specific-runner
save arrows_jenkins
save arrows_nexus
save arrows_nginx
save arrows_ntp
save arrows_openldap
save arrows_phpldapadmin
save arrows_plantuml
save arrows_redmine
save arrows_redmine-db
save arrows_samba
save arrows_test-centos
save rocketchat/hubot-rocketchat
save mongo
save rocketchat/rocket.chat
set +x
