# Basic

## remove repository

![remove_default_repositories](images/nexus/remove_default_repositories.png)

## add backup task

| 設定項目           | 設定値        |
| ------------------ | ------------- |
| Task enabled       | チェック      |
| Task name          | task-backup   |
| Notification email |               |
| Backup location    | /nexus-backup |
| Task frequency     | Manual        |

![task-backup](images/nexus/task-backup.png)



# apt

## Blob Stores

### hosted

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | apt-hosted-blob    |
| Path     | （自動生成される） |

![apt-hosted-blob](images/nexus/apt-hosted-blob.png)

### proxy

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | apt-proxy-blob    |
| Path     | （自動生成される） |

![apt-proxy-blob](images/nexus/apt-proxy-blob.png)

## Repositories

### proxy

| 主要設定項目   | 設定値                           | 備考                         |
| -------------- | -------------------------------- | ---------------------------- |
| Name           | apt-proxy                        |                              |
| Distribution   | bionic                           | ターゲットOSに応じて変更する |
| Remote storage | http://archive.ubuntu.com/ubuntu | ターゲットOSに応じて変更する |
| Blob store     | apt-proxy-blob                   |                              |

![apt-proxy_1](images/nexus/apt-proxy_1.png)

![apt-proxy_2](images/nexus/apt-proxy_2.png)

## Tasks

### proxy

| 設定項目              | 設定値                 |
| --------------------- | ---------------------- |
| Task enabled          | チェック               |
| Task name             | apt-proxy-compact-task |
| Notification email    |                        |
| Blob store            | apt-proxy-blob         |
| Task frequency        | Daily                  |
| Start date            | 01/01/2019             |
| Time to run this task | 03:00                  |

![apt-proxy-compact-task](images/nexus/apt-proxy-compact-task.png)



# bower

## Blob Stores

### hosted

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | bower-hosted-blob    |
| Path     | （自動生成される） |

![bower-hosted-blob](images/nexus/bower-hosted-blob.png)

### proxy

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | bower-proxy-blob    |
| Path     | （自動生成される） |

![bower-proxy-blob](images/nexus/bower-proxy-blob.png)

## Repositories

### hosted

| 主要設定項目      | 設定値            | 備考                     |
| ----------------- | ----------------- | ------------------------ |
| Name              | bower-hosted      |                          |
| Blob store        | bower-hosted-blob |                          |
| Deployment policy | Allow redeploy    | 運用方針によって変更する |

![bower-hosted](images/nexus/bower-hosted.png)

### proxy

| 主要設定項目  | 設定値                    | 備考 |
| ------------- | ------------------------- | ---- |
| Name          | bower-proxy               |      |
| Remote strage | https://registry.bower.io |      |
| Blob store    | bower-proxy-blob          |      |

![bower-proxy_1](images/nexus/bower-proxy_1.png)

![bower-proxy_2](images/nexus/bower-proxy_2.png)

### group

| 主要設定項目 | 設定値                    | 備考 |
| ------------ | ------------------------- | ---- |
| Name         | bower-group               |      |
| Group        | bower-hosted, bower-proxy |      |

![bower-group](images/nexus/bower-group.png)

## Tasks

### hosted

| 設定項目              | 設定値                    |
| --------------------- | ------------------------- |
| Task enabled          | チェック                  |
| Task name             | bower-hosted-compact-task |
| Notification email    |                           |
| Blob store            | bower-hosted-blob         |
| Task frequency        | Daily                     |
| Start date            | 01/01/2019                |
| Time to run this task | 00:00                     |

![bower-hosted-compact-task](images/nexus/bower-hosted-compact-task.png)

### proxy

| 設定項目              | 設定値                   |
| --------------------- | ------------------------ |
| Task enabled          | チェック                 |
| Task name             | bower-proxy-compact-task |
| Notification email    |                          |
| Blob store            | bower-proxy-blob         |
| Task frequency        | Daily                    |
| Start date            | 01/01/2019               |
| Time to run this task | 00:00                    |

![bower-proxy-compact-task](images/nexus/bower-proxy-compact-task.png)



# docker

## Blob Stores

### hosted

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | docker-hosted-blob    |
| Path     | （自動生成される） |

![docker-hosted-blob](images/nexus/docker-hosted-blob.png)

### proxy

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | docker-proxy-blob    |
| Path     | （自動生成される） |

![docker-proxy-blob](images/nexus/docker-proxy-blob.png)

## Repositories

### hosted

| 主要設定項目      | 設定値             | 備考                     |
| ----------------- | ------------------ | ------------------------ |
| Name              | docker-hosted      |                          |
| HTTP              | 48083              |                          |
| Blob store        | docker-hosted-blob |                          |
| Deployment policy | Allow redeploy     | 運用方針によって変更する |

![docker-hosted](images/nexus/docker-hosted_1.png)

![docker-hosted](images/nexus/docker-hosted_2.png)

### proxy

| 主要設定項目         | 設定値                       | 備考 |
| -------------------- | ---------------------------- | ---- |
| Name                 | docker-proxy                 |      |
| HTTP                 | 48082                        |      |
| Enable Docker V1 API | チェック                     |      |
| Docker Index         | Use Docker Hub               |      |
| Remote strage        | https://registry-1.docker.io |      |
| Blob store           | docker-proxy-blob            |      |

![docker-proxy_1](images/nexus/docker-proxy_1.png)

![docker-proxy_2](images/nexus/docker-proxy_2.png)

![docker-proxy_3](images/nexus/docker-proxy_3.png)

### group

| 主要設定項目         | 設定値                      | 備考 |
| -------------------- | --------------------------- | ---- |
| Name                 | docker-group                |      |
| Enable Docker V1 API | チェック                    |      |
| Group                | docker-hosted, docker-proxy |      |

![docker-group](images/nexus/docker-group_1.png)

![docker-group](images/nexus/docker-group_2.png)

## Tasks

### hosted

| 設定項目              | 設定値                     |
| --------------------- | -------------------------- |
| Task enabled          | チェック                   |
| Task name             | docker-hosted-compact-task |
| Notification email    |                            |
| Blob store            | docker-hosted-blob         |
| Task frequency        | Daily                      |
| Start date            | 01/01/2019                 |
| Time to run this task | 00:30                      |

![docker-hosted-compact-task](images/nexus/docker-hosted-compact-task.png)

### proxy

| 設定項目              | 設定値                    |
| --------------------- | ------------------------- |
| Task enabled          | チェック                  |
| Task name             | docker-proxy-compact-task |
| Notification email    |                           |
| Blob store            | docker-proxy-blob         |
| Task frequency        | Daily                     |
| Start date            | 01/01/2019                |
| Time to run this task | 00:30                     |

![docker-proxy-compact-task](images/nexus/docker-proxy-compact-task.png)



# maven2

## Blob Stores

### hosted

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | maven2-hosted-blob    |
| Path     | （自動生成される） |

![maven2-hosted-blob](images/nexus/maven2-hosted-blob.png)

### proxy

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | maven2-proxy-blob    |
| Path     | （自動生成される） |

![maven2-proxy-blob](images/nexus/maven2-proxy-blob.png)

## Repositories

### hosted

| 主要設定項目      | 設定値             | 備考                     |
| ----------------- | ------------------ | ------------------------ |
| Name              | maven2-hosted      |                          |
| Version policy    | Release            |                          |
| Blob store        | maven2-hosted-blob |                          |
| Deployment policy | Allow redeploy     | 運用方針によって変更する |

![maven2-hosted](images/nexus/maven2-hosted_1.png)

![maven2-hosted](images/nexus/maven2-hosted_2.png)

### hosted-snapshot

| 主要設定項目      | 設定値                 | 備考                     |
| ----------------- | ---------------------- | ------------------------ |
| Name              | maven2-hosted-snapshot |                          |
| Version policy    | Snapshot               |                          |
| Blob store        | maven2-hosted-blob     |                          |
| Deployment policy | Allow redeploy         | 運用方針によって変更する |

![maven2-hosted](images/nexus/maven2-hosted-snapshot_1.png)

![maven2-hosted](images/nexus/maven2-hosted-snapshot_2.png)

### proxy

| 主要設定項目   | 設定値                          | 備考 |
| -------------- | ------------------------------- | ---- |
| Name           | maven2-proxy                    |      |
| Version policy | Release                         |      |
| Remote strage  | https://repo1.maven.org/maven2/ |      |
| Blob store     | maven2-proxy-blob               |      |

![maven2-proxy_1](images/nexus/maven2-proxy_1.png)

![maven2-proxy_2](images/nexus/maven2-proxy_2.png)

### group

| 主要設定項目 | 設定値                                              | 備考 |
| ------------ | --------------------------------------------------- | ---- |
| Name         | maven2-group                                        |      |
| Group        | maven2-hosted, maven2-proxy, maven2-hosted-snapshot |      |

![maven2-group](images/nexus/maven2-group.png)

## Tasks

### hosted

| 設定項目              | 設定値                     |
| --------------------- | -------------------------- |
| Task enabled          | チェック                   |
| Task name             | maven2-hosted-compact-task |
| Notification email    |                            |
| Blob store            | maven2-hosted-blob         |
| Task frequency        | Daily                      |
| Start date            | 01/01/2019                 |
| Time to run this task | 01:00                      |

![maven2-hosted-compact-task](images/nexus/maven2-hosted-compact-task.png)

### proxy

| 設定項目              | 設定値                    |
| --------------------- | ------------------------- |
| Task enabled          | チェック                  |
| Task name             | maven2-proxy-compact-task |
| Notification email    |                           |
| Blob store            | maven2-proxy-blob         |
| Task frequency        | Daily                     |
| Start date            | 01/01/2019                |
| Time to run this task | 01:00                     |

![maven2-proxy-compact-task](images/nexus/maven2-proxy-compact-task.png)



# npm

## Blob Stores

### hosted

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | npm-hosted-blob    |
| Path     | （自動生成される） |

![npm-hosted-blob](images/nexus/npm-hosted-blob.png)

### proxy

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | npm-proxy-blob    |
| Path     | （自動生成される） |

![npm-proxy-blob](images/nexus/npm-proxy-blob.png)

## Repositories

### hosted

| 主要設定項目      | 設定値          | 備考                     |
| ----------------- | --------------- | ------------------------ |
| Name              | npm-hosted      |                          |
| Blob store        | npm-hosted-blob |                          |
| Deployment policy | Allow redeploy  | 運用方針によって変更する |

![npm-hosted](images/nexus/npm-hosted.png)

### proxy

| 主要設定項目  | 設定値                     | 備考 |
| ------------- | -------------------------- | ---- |
| Name          | npm-proxy                  |      |
| Remote strage | https://registry.npmjs.org |      |
| Blob store    | npm-proxy-blob             |      |

![npm-proxy_1](images/nexus/npm-proxy_1.png)

![npm-proxy_2](images/nexus/npm-proxy_2.png)

### group

| 主要設定項目 | 設定値                | 備考 |
| ------------ | --------------------- | ---- |
| Name         | npm-group             |      |
| Group        | npm-hosted, npm-proxy |      |

![npm-group](images/nexus/npm-group.png)

## Tasks

### hosted

| 設定項目              | 設定値                  |
| --------------------- | ----------------------- |
| Task enabled          | チェック                |
| Task name             | npm-hosted-compact-task |
| Notification email    |                         |
| Blob store            | npm-hosted-blob         |
| Task frequency        | Daily                   |
| Start date            | 01/01/2019              |
| Time to run this task | 01:30                   |

![npm-hosted-compact-task](images/nexus/npm-hosted-compact-task.png)

### proxy

| 設定項目              | 設定値                 |
| --------------------- | ---------------------- |
| Task enabled          | チェック               |
| Task name             | npm-proxy-compact-task |
| Notification email    |                        |
| Blob store            | npm-proxy-blob         |
| Task frequency        | Daily                  |
| Start date            | 01/01/2019             |
| Time to run this task | 01:30                  |

![npm-proxy-compact-task](images/nexus/npm-proxy-compact-task.png)



# pypi

## Blob Stores

### hosted

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | pypi-hosted-blob    |
| Path     | （自動生成される） |

![pypi-hosted-blob](images/nexus/pypi-hosted-blob.png)

### proxy

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | pypi-proxy-blob    |
| Path     | （自動生成される） |

![pypi-proxy-blob](images/nexus/pypi-proxy-blob.png)

## Repositories

### hosted

| 主要設定項目      | 設定値           | 備考                     |
| ----------------- | ---------------- | ------------------------ |
| Name              | pypi-hosted      |                          |
| Blob store        | pypi-hosted-blob |                          |
| Deployment policy | Allow redeploy   | 運用方針によって変更する |

![pypi-hosted](images/nexus/pypi-hosted.png)

### proxy

| 主要設定項目  | 設定値            | 備考 |
| ------------- | ----------------- | ---- |
| Name          | pypi-proxy        |      |
| Remote strage | https://pypi.org/ |      |
| Blob store    | pypi-proxy-blob   |      |

![pypi-proxy_1](images/nexus/pypi-proxy_1.png)

![pypi-proxy_2](images/nexus/pypi-proxy_2.png)

### group

| 主要設定項目 | 設定値                  | 備考 |
| ------------ | ----------------------- | ---- |
| Name         | pypi-group              |      |
| Group        | pypi-hosted, pypi-proxy |      |

![pypi-group](images/nexus/pypi-group.png)

## Tasks

### hosted

| 設定項目              | 設定値                   |
| --------------------- | ------------------------ |
| Task enabled          | チェック                 |
| Task name             | pypi-hosted-compact-task |
| Notification email    |                          |
| Blob store            | pypi-hosted-blob         |
| Task frequency        | Daily                    |
| Start date            | 01/01/2019               |
| Time to run this task | 02:00                    |

![pypi-hosted-compact-task](images/nexus/pypi-hosted-compact-task.png)

### proxy

| 設定項目              | 設定値                  |
| --------------------- | ----------------------- |
| Task enabled          | チェック                |
| Task name             | pypi-proxy-compact-task |
| Notification email    |                         |
| Blob store            | pypi-proxy-blob         |
| Task frequency        | Daily                   |
| Start date            | 01/01/2019              |
| Time to run this task | 02:00                   |

![pypi-proxy-compact-task](images/nexus/pypi-proxy-compact-task.png)



# yum

## Blob Stores

### hosted

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | yum-hosted-blob    |
| Path     | （自動生成される） |

![yum-hosted-blob](images/nexus/yum-hosted-blob.png)

### proxy

| 設定項目 | 設定値             |
| -------- | ------------------ |
| Type     | File               |
| Name     | yum-proxy-blob    |
| Path     | （自動生成される） |

![yum-proxy-blob](images/nexus/yum-proxy-blob.png)

## Repositories

### hosted

| 主要設定項目      | 設定値          | 備考                     |
| ----------------- | --------------- | ------------------------ |
| Name              | yum-hosted      |                          |
| Blob store        | yum-hosted-blob |                          |
| Deployment policy | Allow redeploy  | 運用方針によって変更する |

![yum-hosted](images/nexus/yum-hosted_1.png)

![yum-hosted](images/nexus/yum-hosted_2.png)

### proxy

| 主要設定項目  | 設定値                           | 備考                         |
| ------------- | -------------------------------- | ---------------------------- |
| Name          | yum-proxy                        |                              |
| Remote strage | http://mirror.centos.org/centos/ | ターゲットOSに応じて変更する |
| Blob store    | yum-proxy-blob                   |                              |

![yum-proxy_1](images/nexus/yum-proxy_1.png)

![yum-proxy_2](images/nexus/yum-proxy_2.png)

### group

| 主要設定項目 | 設定値                | 備考 |
| ------------ | --------------------- | ---- |
| Name         | yum-group             |      |
| Group        | yum-hosted, yum-proxy |      |

![yum-group](images/nexus/yum-group.png)

## Tasks

### hosted

| 設定項目              | 設定値                  |
| --------------------- | ----------------------- |
| Task enabled          | チェック                |
| Task name             | yum-hosted-compact-task |
| Notification email    |                         |
| Blob store            | yum-hosted-blob         |
| Task frequency        | Daily                   |
| Start date            | 01/01/2019              |
| Time to run this task | 00:00                   |

![yum-hosted-compact-task](images/nexus/yum-hosted-compact-task.png)

### proxy

| 設定項目              | 設定値                 |
| --------------------- | ---------------------- |
| Task enabled          | チェック               |
| Task name             | yum-proxy-compact-task |
| Notification email    |                        |
| Blob store            | yum-proxy-blob         |
| Task frequency        | Daily                  |
| Start date            | 01/01/2019             |
| Time to run this task | 02:30                  |

![yum-proxy-compact-task](images/nexus/yum-proxy-compact-task.png)
