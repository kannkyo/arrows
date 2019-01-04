1. Master
     1. Create plugin list
          1. Customize default plugin list
               `./master/plugins/**/*.txt`
          2. Execute script to create plugin list file (`plugins.txt`)
               `create_plugins.sh`
     2. Build image
          Execute `docker-compose build`.
     3. Start container
          Execute `docker-compose start`.
     4. Initialize Jenkins
          1. Open [jenkins web page](http://localhost/jenkins/).
          2. Unlock Jenkins
               1. Execute `docker-compose logs jenkins`.
               2. Copy initialAdminPassword from logs to web page.
          3. Customize Jenkins
               Choose `Install suggested plugins`.
          4. Create First Admin User
               Input administrator information.
               * user name
               * password x2
               * full name
               * mail address
          5. Instance Configuration
               1. Setup Jenkins URL
               2. Send and FInish
2. Slave
     TBD
3. Reference
     * [Docker official jenkins repo](https://github.com/jenkinsci/docker/)
     * [gitlab-plugin/gitlab-to-jenkins-authentication](https://github.com/jenkinsci/gitlab-plugin#gitlab-to-jenkins-authentication)

