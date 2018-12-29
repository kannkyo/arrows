1. backup configuration
     `docker exec -t <your container name> /bin/sh -c 'umask 0077; tar cfz /secret/gitlab/backups/$(date "+etc-gitlab-\%s.tgz") -C / etc/gitlab'`

2. restore configuration

3. reference

     [backup-and-restore-omnibus-gitlab-configuration](https://docs.gitlab.com/omnibus/settings/backups.html#backup-and-restore-omnibus-gitlab-configuration)
