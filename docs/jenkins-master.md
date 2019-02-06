# 基本設定
## アンロック

| 設定項目               | 設定値                                                       | 備考 |
| ---------------------- | ------------------------------------------------------------ | ---- |
| Administrator password | ホストで`docker  logs <container name>`を実行して表示されたハッシュ値 |      |

![unlock_jenkins](images/jenkins/master/unlock_jenkins.png)

## カスタマイズ

`Install suggested plugins`をクリック。

![customize jenkins](images/jenkins/master/customize_jenkins.png)

## Global Tool Configuration

### 設定変更前

![Global Tool Configuration_変更前_1](images/jenkins/master/Global Tool Configuration_変更前_1.png)

![Global Tool Configuration_変更前_2](images/jenkins/master/Global Tool Configuration_変更前_2.png)

### 設定変更後

1. MavenのMaven追加をクリックして、自動インストールをチェック
2. DockerのDocker追加をクリックして、自動インストールをチェック
3. Saveをクリック

![Global Tool Configuration_変更後_1](images/jenkins/master/Global Tool Configuration_変更後_1.png)

![Global Tool Configuration_変更後_2](images/jenkins/master/Global Tool Configuration_変更後_2.png)

# GitLab用設定

## ユーザ作成

| 設定項目         | 設定値          | 備考 |
| ---------------- | --------------- | ---- |
| ユーザ名         | gitlab          |      |
| パスワード       | password        |      |
| パスワードの確認 | password        |      |
| フルネーム       | gitlab          |      |
| メールアドレス   | gitlab@test.com |      |



![ユーザ作成_gitlab_1](images/jenkins/master/ユーザ作成_gitlab_1.png)

## ユーザ設定変更

### 変更前

![ユーザ作成設定変更_gitlab_変更前_1](images/jenkins/master/ユーザ作成設定変更_gitlab_変更前_1.png)

![ユーザ作成設定変更_gitlab_変更前_2](images/jenkins/master/ユーザ作成設定変更_gitlab_変更前_2.png)

### 変更後

APIトークンのAdd new Tokenをクリックし、表示されたテキストボックスに`gitlab-connect`と入力し、生成されたtokenをコピー。

![ユーザ作成設定変更_gitlab_変更後_1](images/jenkins/master/ユーザ作成設定変更_gitlab_変更後_1.png)

## システムの設定
### 認証情報追加

Jenkins>設定>GitLabを表示。

| 設定項目                                       | 設定値                  | 備考 |
| ---------------------------------------------- | ----------------------- | ---- |
| Enable authentication for '/project' end-point | check                   |      |
| Connection name                                | gitlab-connection       |      |
| Gitlab host URL                                | http://gitlab:80/gitlab |      |
| Credentials                                    | 注1                     |      |

注1　追加をクリックして、以下の項目を入力

| 設定項目  | 設定値                  | 備考 |
| --------- | ----------------------- | ---- |
| Domain    | グローバルドメイン      |      |
| 種類      | GitLab API token        |      |
| スコープ  | グローバル              |      |
| API token | 全手順でコピーしたtoken |      |
| ID        |                         |      |
| 説明      |                         |      |





![設定_Gitlab_1](images/jenkins/master/設定_Gitlab_1.png)

![設定_Gitlab_2](images/jenkins/master/設定_Gitlab_2.png)

# LDAP用設定

## グローバルセキュリティの設定

### 変更前

![グローバルセキュリティの設定_変更前_1](images/jenkins/master/グローバルセキュリティの設定_変更前_1.png)

![グローバルセキュリティの設定_変更前_2](images/jenkins/master/グローバルセキュリティの設定_変更前_2.png)

![グローバルセキュリティの設定_変更前_3](images/jenkins/master/グローバルセキュリティの設定_変更前_3.png)

### 変更後

ユーザ情報でLDAPを選択し、Advanced Configurationボタンをクリック

| 設定項目                     | 設定値                     | 備考 |
| ---------------------------- | -------------------------- | ---- |
| Server                       | openldap:389               |      |
| root DN                      | dc=example,dc=com          |      |
| User search base             | ou=people                  |      |
| User search filter           | uid={0}                    |      |
| Group search base            | ou=groups                  |      |
| Group search filter          |                            |      |
| Group membership             |                            |      |
| Manager DN                   | cn=admin,dc=example,dc=com |      |
| Manager Password             | ldappw                     |      |
| Display Name LDAP attribute  | uid                        |      |
| Email Address LDAP attribute | mail                       |      |



![グローバルセキュリティの設定_変更後_1](images/jenkins/master/グローバルセキュリティの設定_変更後_1.png)

![グローバルセキュリティの設定_変更後_2](images/jenkins/master/グローバルセキュリティの設定_変更後_2.png)

![グローバルセキュリティの設定_変更後_3](images/jenkins/master/グローバルセキュリティの設定_変更後_3.png)

## ログイン確認

| 設定項目   | 設定値   | 備考 |
| ---------- | -------- | ---- |
| Username   | yamada   |      |
| パスワード | password |      |



![ＬＤＡＰログイン_1](images/jenkins/master/ＬＤＡＰ_login_1.png)

![ＬＤＡＰログイン_2](images/jenkins/master/ＬＤＡＰ_login_2.png)

# サンプルジョブ作成

## 新規ジョブ作成

以下の項目を設定してOKをクリック

| 設定項目           | 設定値                    | 備考 |
| ------------------ | ------------------------- | ---- |
| Enter an item name | sample                    |      |
| -                  | Mavenプロジェクトのビルド |      |

![新規ジョブ作成_sample_1](images/jenkins/master/新規ジョブ作成_sample_1.png)



![新規ジョブ作成_sample_general_1](images/jenkins/master/新規ジョブ作成_sample_general_1.png)

![新規ジョブ作成_sample_ソースコード管理_1](images/jenkins/master/新規ジョブ作成_sample_ソースコード管理_1.png)

![新規ジョブ作成_sample_ビルド_1](images/jenkins/master/新規ジョブ作成_sample_ビルド_1.png)

![新規ジョブ作成_sample_ビルド・トリガ_1](images/jenkins/master/新規ジョブ作成_sample_ビルド・トリガ_1.png)

# ワーニング対応

## [リバースプロキシの設定がおかしいようです。](https://wiki.jenkins.io/display/JENKINS/Jenkins+says+my+reverse+proxy+setup+is+broken)

### 中止前

![リバースプロキシの設定がおかしいようです_中止前](images/jenkins/master/リバースプロキシの設定がおかしいようです_中止前.png)

### 中止後

ワーニングで中止ボタンを押下。

![リバースプロキシの設定がおかしいようです_中止後](images/jenkins/master/リバースプロキシの設定がおかしいようです_中止後.png)

