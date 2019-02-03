# ログイン

トップページでloginを押す。

![login_1](images/ldap/phpldapadmin/login_1.png)

Login DNとPasswordを入力する。

| 設定項目 | 設定値                     | 備考 |
| -------- | -------------------------- | ---- |
| Login DN | cn=admin,dc=example,dc=com |      |
| Password | ldappw                     |      |

![login_2](images/ldap/phpldapadmin/login_2.png)

ログインできた。

![login_3](images/ldap/phpldapadmin/login_3.png)

# 設定

## グループ作成

dc=example, dc=comをクリック。

![create_organisational_unit_1](images/ldap/phpldapadmin/create_organisational_unit_1.png)

Create a child entryをクリック。

![create_organisational_unit_2](images/ldap/phpldapadmin/create_organisational_unit_2.png)

Generic: Organisational Unitをクリック。

| 設定項目            | 設定値 | 備考 |
| ------------------- | ------ | ---- |
| Organixational Unit | groups |      |

![create_organisational_unit_3](images/ldap/phpldapadmin/create_organisational_unit_3.png)

Commitをクリック。

![create_organisational_unit_4](images/ldap/phpldapadmin/create_organisational_unit_4.png)

作成された。

![create_organisational_unit_5](images/ldap/phpldapadmin/create_organisational_unit_5.png)


## ユーザ追加

### ユーザ作成

ou=peopleをクリック。

![create_user_1](images/ldap/phpldapadmin/create_user_1.png)

Create a child Entryをクリック。

![create_user_2](images/ldap/phpldapadmin/create_user_2.png)

Defaultをクリック。

![create_user_3](images/ldap/phpldapadmin/create_user_3.png)

inetOrgPersonを選択して、Proceedをクリック。
以下の項目を設定する。

| 設定項目  | 設定値             | 備考 |
| --------- | ------------------ | ---- |
| RDN       | User Name(uid)     |      |
| cn        | Taro Tanaka        |      |
| sn        | Tanaka             |      |
| Email     | tanaka@example.com |      |
| givenName | Taro               |      |
| Password  | password / crypto  |      |
| Username  | tanaka             |      |

![create_user_4](images/ldap/phpldapadmin/create_user_4.png)

![create_user_5](images/ldap/phpldapadmin/create_user_5.png)

![create_user_6](images/ldap/phpldapadmin/create_user_6.png)

![create_user_7](images/ldap/phpldapadmin/create_user_7.png)

Create Objectをクリック。

![create_user_8](images/ldap/phpldapadmin/create_user_8.png)

設定内容を確認して、Commitをクリック。
作成されたことを確認する。

![create_user_9](images/ldap/phpldapadmin/create_user_9.png)

### グループへのユーザ追加

ou=groupsをクリック。

![add_user_to_group_1](images/ldap/phpldapadmin/add_user_to_group_1.png)

uniqueMemberのadd valueをクリック。

![add_user_to_group_2](images/ldap/phpldapadmin/add_user_to_group_2.png)

以下の項目を設定してUpdate Objectをクリック。

| 設定項目             | 設定値                                 | 備考 |
| -------------------- | -------------------------------------- | ---- |
| uniqueMember の3行目 | uid=tanaka,ou=people,dc=example,dc=com |      |

![add_user_to_group_3](images/ldap/phpldapadmin/add_user_to_group_3.png)

Update Objectをクリック。

![add_user_to_group_4](images/ldap/phpldapadmin/add_user_to_group_4.png)

追加されたことを確認。

# エクスポート

![export_1](images/ldap/phpldapadmin/export_1.png)

![export_2](images/ldap/phpldapadmin/export_2.png)