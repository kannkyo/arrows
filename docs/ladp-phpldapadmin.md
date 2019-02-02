# ログイン

トップページでloginを押す。

![login_1](images/ldap/phpldapadmin/login_1.png)





| 設定項目 | 設定値                     | 備考 |
| -------- | -------------------------- | ---- |
| Login DN | cn=admin,dc=example,dc=com |      |
| Password | ldappw                     |      |

![login_2](images/ldap/phpldapadmin/login_2.png)


![login_3](images/ldap/phpldapadmin/login_3.png)

# Projectの作成

dc=example, dc=com (3)をクリック。

![create_organisational_unit_1](images/ldap/phpldapadmin/create_organisational_unit_1.png)

Create a child entryをクリック。

![create_organisational_unit_2](images/ldap/phpldapadmin/create_organisational_unit_2.png)

Generic: Organisational Unitをクリック。

| 設定項目            | 設定値 | 備考 |
| ------------------- | ------ | ---- |
| Organixational Unit | groups |      |

![create_organisational_unit_3](images/ldap/phpldapadmin/create_organisational_unit_3.png)

![create_organisational_unit_4](images/ldap/phpldapadmin/create_organisational_unit_4.png)

![create_organisational_unit_5](images/ldap/phpldapadmin/create_organisational_unit_5.png)

# ユーザの作成

![create_user_entry_1](images/ldap/phpldapadmin/create_user_entry_1.png)