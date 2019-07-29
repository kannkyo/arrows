# gitlab
external_url 'http://gitlab:80/gitlab'
gitlab_rails['lfs_enabled'] = true
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password')

# registry
registry_external_url 'http://localhost:10082'

# mattermost
mattermost['enable'] = false
