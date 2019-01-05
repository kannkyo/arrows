gitlab_rails['lfs_enabled'] = true
external_url 'http://localhost:80/gitlab'
mattermost_external_url 'http://localhost:10081'
registry_external_url 'http://localhost:10082'
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
