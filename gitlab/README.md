1. Backup configuration

     ```shell
     $ docker exec -t <your container name> /bin/sh -c 'umask 0077; tar cfz /secret/gitlab/backups/$(date "+etc-gitlab-\%s.tgz") -C / etc/gitlab'
     ```

2. Restore configuration

3. Account

     1. Administrator
          - admin/admin123
     2. Others
          - guest/password

4. Reference

     - GitLab CE
       - [backup-and-restore-omnibus-gitlab-configuration](https://docs.gitlab.com/omnibus/settings/backups.html#backup-and-restore-omnibus-gitlab-configuration)
       - Mattemost
         - [mattermost config-settings](https://docs.mattermost.com/administration/config-settings.html)
         - [gitlab-mattemost](https://docs.gitlab.com/omnibus/gitlab-mattermost/)
     - GitLab runner
       - [registering-a-shared-runner](https://docs.gitlab.com/ee/ci/runners/#registering-a-shared-runner)
     - Plantuml
       - [Configuring a Specific Web Application Deployment](https://www.eclipse.org/jetty/documentation/9.4.x/configuring-specific-webapp-deployment.html)

