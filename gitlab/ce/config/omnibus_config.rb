# gitlab
external_url 'http://gitlab:80/gitlab'

gitlab_rails['lfs_enabled'] = true
gitlab_rails['ldap_enabled'] = true
gitlab_rails['ldap_servers'] = YAML.load <<-'EOS'
  main: # 'main' is the GitLab 'provider ID' of this LDAP server
    label: 'LDAP'
    host: 'openldap'
    port: 389
    uid: 'uid'
    bind_dn: 'cn=admin,dc=example,dc=com'
    password: 'ldappw'
    encryption: 'plain' # "start_tls" or "simple_tls" or "plain"
    verify_certificates: true
    ca_file: ''
    ssl_version: ''
    active_directory: false
    allow_username_or_email_login: false
    block_auto_created_users: false
    base: 'ou=people,dc=example,dc=com'
    user_filter: ''
    attributes:
      username: ['uid', 'userid', 'sAMAccountName']
      email:    ['mail', 'email', 'userPrincipalName']
      name:       'cn'
      first_name: 'givenName'
      last_name:  'sn'
EOS

# registry
registry_external_url 'http://localhost:10082'

# mattermost
mattermost_external_url 'http://localhost:10081'
mattermost['enable'] = true
mattermost['env'] = {
  'MM_LOCALIZATIONSETTINGS_DEFAULTSERVERLOCALE' => 'ja',
  'MM_LOCALIZATIONSETTINGS_DEFAULTCLIENTLOCALE' => 'ja',
  'MM_EMAILSETTINGS_ENABLESIGNUPWITHEMAIL' => 'false',
  'MM_EMAILSETTINGS_ENABLESIGNINWITHEMAIL' => 'false',
  'MM_EMAILSETTINGS_ENABLESIGNINWITHUSERNAME' => 'false',
}
