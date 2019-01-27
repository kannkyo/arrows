# GitLab初回ログイン
## ログイン

| 設定項目          | 設定値   | 備考 |
| ----------------- | -------- | ---- |
| Username or email | root     |      |
| Password          | admin123 |      |

![first_login](images/gitlab/ce/first_login.png)

## パスワード変更

| 設定項目             | 設定値   | 備考 |
| -------------------- | -------- | ---- |
| New password         | admin123 |      |
| Confirm new password | admin123 |      |

![change_your_password](images/gitlab/ce/change_your_password.png)

## ようこそ画面

![welcome_to_gitlab](images/gitlab/ce/welcome_to_gitlab.png)

# LDAP
## ログイン確認

| 設定項目      | 設定値   | 備考 |
| ------------- | -------- | ---- |
| タブ          | LDAP     |      |
| LDAP Username | yamada   |      |
| Password      | password |      |

![ＬＤＡＰログイン_1](images/gitlab/ce/ＬＤＡＰログイン_1.png)

# Admin Area
## Users/New User追加

| 設定区分 | 設定項目 | 設定値         | 備考 |
| -------- | -------- | -------------- | ---- |
| Account  | Name     | guest          |      |
|          | Username | guest          |      |
|          | Email    | guset@test.com |      |
| Password | Password | **TBD**        |      |

![new_user_guest_1](images/gitlab/ce/new_user_guest_1.png)

![new_user_guest_2](images/gitlab/ce/new_user_guest_2.png)

![new_user_guest_3](images/gitlab/ce/new_user_guest_3.png)

## Integrations/PlantUML設定
### 設定前

![admin_area_integrations_plantuml_before](images/gitlab/ce/admin_area_integrations_plantuml_before.png)

### 設定後

| 設定区分 | 設定項目        | 設定値                    | 備考 |
| -------- | --------------- | ------------------------- | ---- |
| PlantUML | Enable PlantUML | チェック                  |      |
|          | PlantUML URL    | http://localhost/plantuml |      |

![admin_area_integrations_plantuml_after](images/gitlab/ce/admin_area_integrations_plantuml_after.png)

## Settings/Visibility and access controls設定
### 設定前

![admin_area_settings_visibility_before_1](images/gitlab/ce/admin_area_settings_visibility_before_1.png)

![admin_area_settings_visibility_before_2](images/gitlab/ce/admin_area_settings_visibility_before_2.png)

![admin_area_settings_visibility_before_3](images/gitlab/ce/admin_area_settings_visibility_before_3.png)

![admin_area_settings_visibility_before_4](images/gitlab/ce/admin_area_settings_visibility_before_4.png)

### 設定後

| 設定区分                       | 設定項目         | 設定値                                                       | 備考 |
| ------------------------------ | ---------------- | ------------------------------------------------------------ | ---- |
| Visibility and access controls | Import sources   | Bitbucket Server, GitLab.com, Repo by URL, GitLab export, Gitea, Manifest file, Project export enabled |      |
| Account and limit              | Gravatar enabled | チェック無し                                                 |      |

![admin_area_settings_visibility_after_2](images/gitlab/ce/admin_area_settings_visibility_after_2.png)

![admin_area_settings_visibility_after_3](images/gitlab/ce/admin_area_settings_visibility_after_3.png)

## Settings/Network設定
### 設定前

![settings_outbound_requests_before](images/gitlab/ce/settings_outbound_requests_before.png)

### 設定後

| 設定区分          | 設定項目                                                    | 設定値   | 備考 |
| ----------------- | ----------------------------------------------------------- | -------- | ---- |
| Outbound requests | Allow requests to the local network from hooks and services | チェック |      |

![settings_outbound_requests_after](images/gitlab/ce/settings_outbound_requests_after.png)

## Service Templates/Redmine設定
### 設定前

![admin_area_service_templates_redmine_before](images/gitlab/ce/admin_area_service_templates_redmine_before.png)

### 設定後

| 設定区分 | 設定項目      | 設定値                                              | 備考 |
| -------- | ------------- | --------------------------------------------------- | ---- |
| Redmine  | Active        | チェック                                            |      |
|          | Description   | Redmine issue tracker                               |      |
|          | Project url   | http://localhost/redmine/projects/sample            |      |
|          | Issues url    | http://localhost/redmine/issues/:id                 |      |
|          | New issue url | http://localhost/redmine/projects/sample/issues/new |      |

![admin_area_service_templates_redmine_after](images/gitlab/ce/admin_area_service_templates_redmine_after.png)


# 新規プロジェクト作成

## 新規グループ作成

![new_group](images/gitlab/ce/new_group.png)

## bower-hello-world作成

![new_project_bower-hello-world](images/gitlab/ce/new_project_bower-hello-world.png)

## samplepj作成
### Blank project作成

![new_project_samplepj](images/gitlab/ce/new_project_samplepj.png)

### Settings/Members設定
![new_project_samplepj_add_user](images/gitlab/ce/new_project_samplepj_add_user.png)

## wiki投稿

![wiki_create_page_1](images/gitlab/ce/wiki_create_page_1.png)

![wiki_create_page_2](images/gitlab/ce/wiki_create_page_2.png)

![wiki_create_page_3](images/gitlab/ce/wiki_create_page_3.png)

## Jenkins連携

### Integrations/Webhooks設定

- URL
  - http://gitlab:11f4168169208232ab4b78b138ee33574c@jenkins:8080/jenkins/project/sample
- Trigger
  - Push Events
- Enable SSL verification
  - Enable

![new_project_samplepj_webhooks_jenkins_1](images/gitlab/ce/new_project_samplepj_webhooks_jenkins_1.png)

![new_project_samplepj_webhooks_jenkins_2](images/gitlab/ce/new_project_samplepj_webhooks_jenkins_2.png)

## Redmine連携

### 権限設定

```shell
cd /var/opt/gitlab/
chmod -R o+r git-data/
chmod -R o+x git-data/
```

### GitLab側のIssue無効化

#### 設定前

![setting_general_permissions_before](images/gitlab/ce/setting_general_permissions_before.png)

#### 設定後

![setting_general_permissions_after](images/gitlab/ce/setting_general_permissions_after.png)

### Integrations/Webhooks設定

- URL
  - http://redmine:3000/redmine/sys/fetch_changesets?id=1&key=6lSGAF8joKX7O8OuvWay
- Trigger
  - Push events
- Enable SSL verification
  - disable

![new_project_samplepj_webhooks_redmine_1](images/gitlab/ce/new_project_samplepj_webhooks_redmine_1.png)

![new_project_samplepj_webhooks_redmine_2](images/gitlab/ce/new_project_samplepj_webhooks_redmine_2.png)

### コミット

![commit_redmine_ticket_1](images/gitlab/ce/commit_redmine_ticket_1.png)

![commit_redmine_ticket_2](images/gitlab/ce/commit_redmine_ticket_2.png)

# Mattermost初回ログイン

## ログイン

![mattermost_1](images/gitlab/ce/mattermost_1.png)

## Auth認証設定

![mattermost_2](images/gitlab/ce/mattermost_2.png)

![mattermost_3](images/gitlab/ce/mattermost_3.png)

## Team設定

![mattermost_4](images/gitlab/ce/mattermost_4.png)

![mattermost_5](images/gitlab/ce/mattermost_5.png)

## Welcome画面

![mattermost_6](images/gitlab/ce/mattermost_6.png)

![mattermost_7](images/gitlab/ce/mattermost_7.png)

![mattermost_8](images/gitlab/ce/mattermost_8.png)

## チャット画面

![mattermost_9](images/gitlab/ce/mattermost_9.png)