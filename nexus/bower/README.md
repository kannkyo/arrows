1. Initialize

   1. Install `bower-nexus3-resolver`

      ```shell
      $ npm update
      ```

2. Download new packages on online

   1. Clean cache

      ```shell
      $ bower cache clean
      ```

   2. Check cache

      ```shell
      $ bower cache list
      ```

   3. Install package

      ```shell
      $ bower install --save <package name>
      ```

3. Install new package on offline

   ```shell
   $ bower install --save <package name>
   ```

4. Install packages from bower.json on offline

   ```shell
   $ bower update
   ```

5. Register package on offline

   1. Install `bower-nexus3-resolver` plugin

      ```shell
      $ npm install --save-dev bower-nexus3-resolver
      ```

   2. Register package

      ```shell
      $ bower register nexus-hello-world git://github.com/indolering/hello-world.git -f
      ```

6. Example

   1. Download new package on online

      ```shell
      $ bower cache clean
      bower deleted       Cached package jquery: /home/<user>/.cache/bower/packages/35300e45e44dbc6f186ed069533ef0af/3.1.1
      $ bower cache list
      $ bower install --save <package name>
      bower not-cached    nexus+http://localhost/nexus/repository/bower-group/jquery#*
      bower resolve       nexus+http://localhost/nexus/repository/bower-group/jquery#*
      bower resolved      nexus+http://localhost/nexus/repository/bower-group/jquery#3.3.1
      ```

   2. Register package on offline

      ```shell
      $ npm install --save-dev bower-nexus3-resolver
      npm WARN deprecated hoek@2.16.3: This version is no longer maintained. Please upgrade to the latest version.
      npm WARN deprecated cryptiles@2.0.5: This version is no longer maintained. Please upgrade to the latest version.
      npm WARN deprecated boom@2.10.1: This version is no longer maintained. Please upgrade to the latest version.
      npm notice created a lockfile as package-lock.json. You should commit this file.
      + bower-nexus3-resolver@1.0.2
      added 78 packages from 65 contributors and audited 98 packages in 1.32s
      found 4 moderate severity vulnerabilities
        run `npm audit fix` to fix them, or `npm audit` for details
      $ bower register nexus-hello-world git://github.com/indolering/hello-world.git -f
      bower nexus-hello-world#*      resolve git://github.com/indolering/hello-world.git#*
      bower nexus-hello-world#*     download https://github.com/indolering/hello-world/archive/master.tar.gz
      bower nexus-hello-world#*      extract archive.tar.gz
      bower nexus-hello-world#*     resolved git://github.com/indolering/hello-world.git#3f6a59c1c4
      bower nexus-hello-world       register git://github.com/indolering/hello-world.git
      
      Package nexus-hello-world registered successfully!
      All valid semver tags on git://github.com/indolering/hello-world.git will be available as versions.
      To publish a new version, just release a valid semver tag.
      
      Run bower info nexus-hello-world to list the available versions.
      ```
