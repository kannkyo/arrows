1. Initialize

   1. write pom.xml

2. Download new artifacts on online

   1. Clean local repository and Install

       ```shell
       $ rm -rf target
       $ mvn dependency:purge-local-repository
       ```

3. Install artifacts from pom.xml on offline

   1. Make `pom.xml` file
   2. Install artifacts

       ```shell
       $ mvn install
       ```

4. Deploy artifact

   1. Make `pom.xml` file

   2. Deploy artifact

      ```shell
      $ mvn clean deploy -Dmaven.test.skip=true --settings ./settings.xml
      ```

5. Example

   1. Download new artifacts on online

      ```shell
      $ rm -rf target
      $ mvn dependency:purge-local-repository
      [INFO] Scanning for projects...
      [INFO]                                                                         
      [INFO] ------------------------------------------------------------------------
      [INFO] Building maven2 1.0.0
      [INFO] ------------------------------------------------------------------------
      [INFO] 
      [INFO] --- maven-dependency-plugin:2.8:purge-local-repository (default-cli) @ maven2 ---
      Downloading: http://localhost/nexus/repository/maven2-group/junit/junit/4.12/junit-4.12.pom
      Downloaded: http://localhost/nexus/repository/maven2-group/junit/junit/4.12/junit-4.12.pom (24 KB at 537.7 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.pom
      Downloaded: http://localhost/nexus/repository/maven2-group/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.pom (766 B at 106.9 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.pom
      Downloaded: http://localhost/nexus/repository/maven2-group/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.pom (4 KB at 623.9 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/junit/junit/4.12/junit-4.12.jar
      Downloaded: http://localhost/nexus/repository/maven2-group/junit/junit/4.12/junit-4.12.jar (308 KB at 30755.1 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar
      Downloaded: http://localhost/nexus/repository/maven2-group/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar (44 KB at 7328.1 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar
      Downloaded: http://localhost/nexus/repository/maven2-group/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar (41 KB at 5029.7 KB/sec)
      [INFO] ------------------------------------------------------------------------
      [INFO] BUILD SUCCESS
      [INFO] ------------------------------------------------------------------------
      [INFO] Total time: 0.983 s
      [INFO] Finished at: 2019-01-03T16:57:29+09:00
      [INFO] Final Memory: 16M/362M
      [INFO] ------------------------------------------------------------------------
      ```

   2. Install artifacts from pom.xml on offline

      ```shell
      $ mvn install
      [INFO] Scanning for projects...
      [INFO]                                                                         
      [INFO] ------------------------------------------------------------------------
      [INFO] Building maven2 1.0.0
      [INFO] ------------------------------------------------------------------------
      [INFO] 
      [INFO] --- maven-dependency-plugin:2.8:purge-local-repository (default-cli) @ maven2 ---
      Downloading: http://localhost/nexus/repository/maven2-group/junit/junit/4.12/junit-4.12.pom
      Downloaded: http://localhost/nexus/repository/maven2-group/junit/junit/4.12/junit-4.12.pom (24 KB at 436.3 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.pom
      Downloaded: http://localhost/nexus/repository/maven2-group/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.pom (766 B at 149.6 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.pom
      Downloaded: http://localhost/nexus/repository/maven2-group/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.pom (4 KB at 534.7 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/junit/junit/4.12/junit-4.12.jar
      Downloaded: http://localhost/nexus/repository/maven2-group/junit/junit/4.12/junit-4.12.jar (308 KB at 25629.2 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar
      Downloaded: http://localhost/nexus/repository/maven2-group/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar (44 KB at 7328.1 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-group/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar
      Downloaded: http://localhost/nexus/repository/maven2-group/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar (41 KB at 6706.2 KB/sec)
      [INFO] ------------------------------------------------------------------------
      [INFO] BUILD SUCCESS
      [INFO] ------------------------------------------------------------------------
      [INFO] Total time: 0.951 s
      [INFO] Finished at: 2019-01-03T16:57:31+09:00
      [INFO] Final Memory: 16M/363M
      [INFO] ------------------------------------------------------------------------
      ```

   3. Deploy artifact as release

      ```shell
      $ mvn clean deploy -Dmaven.test.skip=true --settings ./settings.xml
      [INFO] Scanning for projects...
      [INFO]                                                                         
      [INFO] ------------------------------------------------------------------------
      [INFO] Building maven2 1.0.0
      [INFO] ------------------------------------------------------------------------
      [INFO] 
      [INFO] --- maven-clean-plugin:2.5:clean (default-clean) @ maven2 ---
      [INFO] Deleting <work path>/target
      [INFO] 
      [INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ maven2 ---
      [INFO] Using 'UTF-8' encoding to copy filtered resources.
      [INFO] Copying 1 resource
      [INFO] 
      [INFO] --- maven-compiler-plugin:3.8.0:compile (default-compile) @ maven2 ---
      [INFO] Nothing to compile - all classes are up to date
      [INFO] 
      [INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ maven2 ---
      [INFO] Not copying test resources
      [INFO] 
      [INFO] --- maven-compiler-plugin:3.8.0:testCompile (default-testCompile) @ maven2 ---
      [INFO] Not compiling test sources
      [INFO] 
      [INFO] --- maven-surefire-plugin:2.17:test (default-test) @ maven2 ---
      [INFO] Tests are skipped.
      [INFO] 
      [INFO] --- maven-jar-plugin:2.4:jar (default-jar) @ maven2 ---
      [INFO] Building jar: <work path>/target/maven2-1.0.0.jar
      [INFO] 
      [INFO] --- maven-install-plugin:2.5.2:install (default-install) @ maven2 ---
      [INFO] Installing <work path>/target/maven2-1.0.0.jar to <home path>/.m2/repository/nexus/maven2/1.0.0/maven2-1.0.0.jar
      [INFO] Installing <work path>/pom.xml to <home path>/.m2/repository/nexus/maven2/1.0.0/maven2-1.0.0.pom
      [INFO] 
      [INFO] --- maven-deploy-plugin:2.7:deploy (default-deploy) @ maven2 ---
      [INFO] Skipping artifact deployment
      [INFO] 
      [INFO] --- nexus-staging-maven-plugin:1.6.8:deploy (default-deploy) @ maven2 ---
      [INFO] Performing deferred deploys (gathering into "<work path>/target/nexus-staging/deferred")...
      [INFO] Installing <work path>/target/maven2-1.0.0.jar to <work path>/target/nexus-staging/deferred/nexus/maven2/1.0.0/maven2-1.0.0.jar
      [INFO] Installing <work path>/pom.xml to <work path>/target/nexus-staging/deferred/nexus/maven2/1.0.0/maven2-1.0.0.pom
      [INFO] Deploying remotely...
      [INFO] Bulk deploying locally gathered artifacts from directory: 
      [INFO]  * Bulk deploying locally gathered snapshot artifacts
      Uploading: http://localhost/nexus/repository/maven2-hosted/nexus/maven2/1.0.0/maven2-1.0.0.jar
      Uploaded: http://localhost/nexus/repository/maven2-hosted/nexus/maven2/1.0.0/maven2-1.0.0.jar (3 KB at 26.1 KB/sec)
      Uploading: http://localhost/nexus/repository/maven2-hosted/nexus/maven2/1.0.0/maven2-1.0.0.pom
      Uploaded: http://localhost/nexus/repository/maven2-hosted/nexus/maven2/1.0.0/maven2-1.0.0.pom (4 KB at 205.0 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-hosted/nexus/maven2/maven-metadata.xml
      Downloaded: http://localhost/nexus/repository/maven2-hosted/nexus/maven2/maven-metadata.xml (291 B at 16.7 KB/sec)
      Uploading: http://localhost/nexus/repository/maven2-hosted/nexus/maven2/maven-metadata.xml
      Uploaded: http://localhost/nexus/repository/maven2-hosted/nexus/maven2/maven-metadata.xml (291 B at 10.5 KB/sec)
      [INFO]  * Bulk deploy of locally gathered snapshot artifacts finished.
      [INFO] Remote deploy finished with success.
      [INFO] ------------------------------------------------------------------------
      [INFO] BUILD SUCCESS
      [INFO] ------------------------------------------------------------------------
      [INFO] Total time: 1.450 s
      [INFO] Finished at: 2019-01-03T18:14:22+09:00
      [INFO] Final Memory: 22M/399M
      [INFO] ------------------------------------------------------------------------
      ```

   4. Deploy artifact as snapshot

      ```shell
      $ mvn clean deploy -Dmaven.test.skip=true --settings ./settings.xml
      [INFO] Scanning for projects...
      [INFO]                                                                         
      [INFO] ------------------------------------------------------------------------
      [INFO] Building maven2 0.0.1-SNAPSHOT
      [INFO] ------------------------------------------------------------------------
      [INFO] 
      [INFO] --- maven-clean-plugin:2.5:clean (default-clean) @ maven2 ---
      [INFO] Deleting <work path>/target
      [INFO] 
      [INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ maven2 ---
      [INFO] Using 'UTF-8' encoding to copy filtered resources.
      [INFO] Copying 1 resource
      [INFO] 
      [INFO] --- maven-compiler-plugin:3.8.0:compile (default-compile) @ maven2 ---
      [INFO] Nothing to compile - all classes are up to date
      [INFO] 
      [INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ maven2 ---
      [INFO] Not copying test resources
      [INFO] 
      [INFO] --- maven-compiler-plugin:3.8.0:testCompile (default-testCompile) @ maven2 ---
      [INFO] Not compiling test sources
      [INFO] 
      [INFO] --- maven-surefire-plugin:2.17:test (default-test) @ maven2 ---
      [INFO] Tests are skipped.
      [INFO] 
      [INFO] --- maven-jar-plugin:2.4:jar (default-jar) @ maven2 ---
      [INFO] Building jar: <work path>/target/maven2-0.0.1-SNAPSHOT.jar
      [INFO] 
      [INFO] --- maven-install-plugin:2.5.2:install (default-install) @ maven2 ---
      [INFO] Installing <work path>/target/maven2-0.0.1-SNAPSHOT.jar to <home path>/.m2/repository/nexus/maven2/0.0.1-SNAPSHOT/maven2-0.0.1-SNAPSHOT.jar
      [INFO] Installing <work path>/pom.xml to <home path>/.m2/repository/nexus/maven2/0.0.1-SNAPSHOT/maven2-0.0.1-SNAPSHOT.pom
      [INFO] 
      [INFO] --- maven-deploy-plugin:2.7:deploy (default-deploy) @ maven2 ---
      [INFO] Skipping artifact deployment
      [INFO] 
      [INFO] --- nexus-staging-maven-plugin:1.6.8:deploy (default-deploy) @ maven2 ---
      [INFO] Performing deferred deploys (gathering into "<work path>/target/nexus-staging/deferred")...
      [INFO] Installing <work path>/target/maven2-0.0.1-SNAPSHOT.jar to <work path>/target/nexus-staging/deferred/nexus/maven2/0.0.1-SNAPSHOT/maven2-0.0.1-SNAPSHOT.jar
      [INFO] Installing <work path>/pom.xml to <work path>/target/nexus-staging/deferred/nexus/maven2/0.0.1-SNAPSHOT/maven2-0.0.1-SNAPSHOT.pom
      [INFO] Deploying remotely...
      [INFO] Bulk deploying locally gathered artifacts from directory: 
      [INFO]  * Bulk deploying locally gathered snapshot artifacts
      Downloading: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/0.0.1-SNAPSHOT/maven-metadata.xml
      Uploading: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/0.0.1-SNAPSHOT/maven2-0.0.1-20190103.091818-1.jar
      Uploaded: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/0.0.1-SNAPSHOT/maven2-0.0.1-20190103.091818-1.jar (3 KB at 49.0 KB/sec)
      Uploading: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/0.0.1-SNAPSHOT/maven2-0.0.1-20190103.091818-1.pom
      Uploaded: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/0.0.1-SNAPSHOT/maven2-0.0.1-20190103.091818-1.pom (4 KB at 148.2 KB/sec)
      Downloading: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/maven-metadata.xml
      Uploading: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/0.0.1-SNAPSHOT/maven-metadata.xml
      Uploaded: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/0.0.1-SNAPSHOT/maven-metadata.xml (761 B at 27.5 KB/sec)
      Uploading: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/maven-metadata.xml
      Uploaded: http://localhost/nexus/repository/maven2-hosted-snapshot/nexus/maven2/maven-metadata.xml (271 B at 11.0 KB/sec)
      [INFO]  * Bulk deploy of locally gathered snapshot artifacts finished.
      [INFO] Remote deploy finished with success.
      [INFO] ------------------------------------------------------------------------
      [INFO] BUILD SUCCESS
      [INFO] ------------------------------------------------------------------------
      [INFO] Total time: 1.513 s
      [INFO] Finished at: 2019-01-03T18:18:18+09:00
      [INFO] Final Memory: 27M/613M
      [INFO] ------------------------------------------------------------------------
      ```

6. Reference

   - [How to Deploy the Artifacts of a Project to Nexus, with Maven.](https://blog.sonatype.com/maven-deploy-to-nexus)
   - [Maven Repositories](https://help.sonatype.com/repomanager3/maven-repositories)
