# セットアップウィザード

## 管理者情報

| 設定項目         | 設定値         |
| ---------------- | -------------- |
| 名前             | admin          |
| ユーザ名         | admin          |
| 組織の電子メール | admin@test.com |
| パスワード       | admin123       |

![セットアップウィザード_1](images/rocketchat/rocket.chat/セットアップウィザード_1.png)

## 組織情報

| 設定項目     | 設定値           |
| ------------ | ---------------- |
| 組織の種類   | オプションを選択 |
| 組織名       |                  |
| 産業         | オプションを選択 |
| サイズ       | オプションを選択 |
| カントリー   | オプションを選択 |
| ウェブサイト |                  |

![セットアップウィザード_2](images/rocketchat/rocket.chat/セットアップウィザード_2.png)

## サーバ情報

| 設定項目       | 設定値           |
| -------------- | ---------------- |
| サイト名       |                  |
| 言語           | デフォルト       |
| サーバーの種類 | オプションを選択 |

![セットアップウィザード_3](images/rocketchat/rocket.chat/セットアップウィザード_3.png)

## 登録サーバ情報

| 設定項目     | 設定値                                             |
| ------------ | -------------------------------------------------- |
| 登録サーバー | スタンドアローンを保つ、あなたはする必要があります |


![セットアップウィザード_4](images/rocketchat/rocket.chat/セットアップウィザード_4.png)

# 管理

## LDAP設定

| 設定項目                         | 設定値                                                       |
| -------------------------------- | ------------------------------------------------------------ |
| ホスト                           | openldap                                                     |
| ポート                           | 389                                                          |
| ベースDN                         | dc=example,dc=com                                            |
| ユーザDN                         | cn=admin,dc=example,dc=com                                   |
| パスワード                       | ladppw                                                       |
| ユーザ名フィールド               | sAMAccountName                                               |
| 一意性を識別するフィールド       | uid, objectGUID,ibm-entryUUID,GUID,dominoUNID,nsuniqueId,uidNumber |
| ユーザーデータのフィールドマップ | {"cn":"name", "mail":"email"}                                |
| 検索フィールド                   | uid                                                          |

![LDAP_1](images/rocketchat/rocket.chat/LDAP_1.png)

![LDAP_2](images/rocketchat/rocket.chat/LDAP_2.png)

![LDAP_3](images/rocketchat/rocket.chat/LDAP_3.png)

![LDAP_4](images/rocketchat/rocket.chat/LDAP_4.png)

![LDAP_5](images/rocketchat/rocket.chat/LDAP_5.png)

## ユーザー設定

### bot追加

| 設定項目                     | 設定値          |
| ---------------------------- | --------------- |
| 名前                         | bot             |
| ユーザー名                   | bot             |
| メール                       | bot@example.com |
| 検証                         |                 |
| パスワード                   | bot             |
| パスワードの変更を要求       |                 |
| Roles                        | bot             |
| デフォルトのチャンネルに参加 | チェック        |
| ようこそメールを送信         |                 |

![ユーザ_bot](images/rocketchat/rocket.chat/ユーザ_bot.png)

## ログ設定

### 変更前

![ログ_変更前](images/rocketchat/rocket.chat/ログ_変更前.png)

### 変更後

| 設定項目   | 設定値           |
| ---------- | ---------------- |
| ログレベル | 1 - エラーと情報 |

![ログ_変更後](images/rocketchat/rocket.chat/ログ_変更後.png)

## 全般設定

### サイトURL設定

#### 変更前

![全般_サイトURL_変更前](images/rocketchat/rocket.chat/全般_サイトURL_変更前.png)

#### 変更後

| 設定項目  | 設定値                           |
| --------- | -------------------------------- |
| サイトURL | http://localhost:3000/rocketchat |

![全般_サイトURL_変更後](images/rocketchat/rocket.chat/全般_サイトURL_変更後.png)
