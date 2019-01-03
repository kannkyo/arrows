1. Initialize

   1. Create _auth

      ```shell
      $ echo -n '<user name>:<password>' | openssl base64
      ```

      if you want to use `admin:admin123`, you can use default _auth.

2. Download new packages on online

   1. Make `.npmrc` file

      ```shell
      $ cat > .npmrc << "EOF"
      > email=foo@example.com
      > always-auth=true
      > _auth=YWRtaW46YWRtaW4xMjM=
      > 
      > registry=http://localhost/nexus/repository/npm-group/
      > EOF
      ```

   2. Clean cache

      ```shell
      $ rm -rf node_modules
      $ npm cache clean --force
      ```

   3. Install packages

      ```shell
      $ npm install --save <package name>
      ```

      ```shell
      $ npm install --save-dev <package name>
      ```

3. Install new packages on offline
   1. Make `.npmrc` file
   2. Install packages

       ```shell
       $ npm install --save <package name>
       ```

4. Install packages from package.json on offline
   1. Make `.npmrc` file
   2. Install packages

       ```shell
       $ npm update
       ```

5. Publish packages on offline

   1. Make `.npmrc` file

      ```shell
      $ cat > .npmrc << "EOF"
      > email=foo@example.com
      > always-auth=true
      > _auth=YWRtaW46YWRtaW4xMjM=
      > 
      > registry=http://localhost/nexus/repository/npm-hosted/
      > EOF
      ```

   2. Publish

      ```shell
      $ npm publish
      ```

6. Example

   1. Download new packages on online

      ```shell
      $ npm cache clean --force
      $ npm install --save-dev bower-nexus3-resolver
      npm WARN deprecated cryptiles@2.0.5: This version is no longer maintained. Please upgrade to the latest version.
      npm WARN deprecated hoek@2.16.3: This version is no longer maintained. Please upgrade to the latest version.
      npm WARN deprecated boom@2.10.1: This version is no longer maintained. Please upgrade to the latest version.
      npm notice created a lockfile as package-lock.json. You should commit this file.
      npm WARN npm-private@1.0.0 No repository field.
      npm WARN npm-private@1.0.0 No license field.
      
      + bower-nexus3-resolver@1.0.2
      added 78 packages from 65 contributors in 4.742s
      $ npm install --save yo gulp grunt grunt-cli karma
      npm WARN deprecated circular-json@0.5.9: CircularJSON is in maintenance only, flatted is its successor.
      npm WARN deprecated cross-spawn-async@2.2.5: cross-spawn no longer requires a build toolchain, use it instead
      
      > spawn-sync@1.0.15 postinstall <path>/node_modules/spawn-sync
      > node postinstall
      
      
      > yo@2.0.5 postinstall <path>/node_modules/yo
      > yodoctor
      
      
      Yeoman Doctor
      Running sanity checks on your system
      
      ✔ Global configuration file is valid
      ✔ NODE_PATH matches the npm root
      ✔ Node.js version
      ✔ No .bowerrc file in home directory
      ✔ No .yo-rc.json file in home directory
      ✔ npm version
      ✔ yo version
      
      Everything looks all right!
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@^1.2.2 (node_modules/chokidar/node_modules/fsevents):
      npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.4: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
      npm WARN npm-private@1.0.0 No repository field.
      npm WARN npm-private@1.0.0 No license field.
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: abbrev@1.1.1 (node_modules/fsevents/node_modules/abbrev):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/abbrev' -> '<path>/node_modules/fsevents/node_modules/.abbrev.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: ansi-regex@2.1.1 (node_modules/fsevents/node_modules/ansi-regex):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/ansi-regex' -> '<path>/node_modules/fsevents/node_modules/.ansi-regex.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: aproba@1.2.0 (node_modules/fsevents/node_modules/aproba):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/aproba' -> '<path>/node_modules/fsevents/node_modules/.aproba.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: balanced-match@1.0.0 (node_modules/fsevents/node_modules/balanced-match):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/balanced-match' -> '<path>/node_modules/fsevents/node_modules/.balanced-match.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: chownr@1.0.1 (node_modules/fsevents/node_modules/chownr):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/chownr' -> '<path>/node_modules/fsevents/node_modules/.chownr.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: code-point-at@1.1.0 (node_modules/fsevents/node_modules/code-point-at):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/code-point-at' -> '<path>/node_modules/fsevents/node_modules/.code-point-at.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: concat-map@0.0.1 (node_modules/fsevents/node_modules/concat-map):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/concat-map' -> '<path>/node_modules/fsevents/node_modules/.concat-map.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: console-control-strings@1.1.0 (node_modules/fsevents/node_modules/console-control-strings):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/console-control-strings' -> '<path>/node_modules/fsevents/node_modules/.console-control-strings.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: core-util-is@1.0.2 (node_modules/fsevents/node_modules/core-util-is):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/core-util-is' -> '<path>/node_modules/fsevents/node_modules/.core-util-is.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: deep-extend@0.5.1 (node_modules/fsevents/node_modules/deep-extend):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/deep-extend' -> '<path>/node_modules/fsevents/node_modules/.deep-extend.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: delegates@1.0.0 (node_modules/fsevents/node_modules/delegates):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/delegates' -> '<path>/node_modules/fsevents/node_modules/.delegates.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: detect-libc@1.0.3 (node_modules/fsevents/node_modules/detect-libc):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/detect-libc' -> '<path>/node_modules/fsevents/node_modules/.detect-libc.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fs.realpath@1.0.0 (node_modules/fsevents/node_modules/fs.realpath):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/fs.realpath' -> '<path>/node_modules/fsevents/node_modules/.fs.realpath.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: has-unicode@2.0.1 (node_modules/fsevents/node_modules/has-unicode):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/has-unicode' -> '<path>/node_modules/fsevents/node_modules/.has-unicode.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: inherits@2.0.3 (node_modules/fsevents/node_modules/inherits):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/inherits' -> '<path>/node_modules/fsevents/node_modules/.inherits.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: ini@1.3.5 (node_modules/fsevents/node_modules/ini):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/ini' -> '<path>/node_modules/fsevents/node_modules/.ini.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: isarray@1.0.0 (node_modules/fsevents/node_modules/isarray):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/isarray' -> '<path>/node_modules/fsevents/node_modules/.isarray.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: minimist@0.0.8 (node_modules/fsevents/node_modules/minimist):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/minimist' -> '<path>/node_modules/fsevents/node_modules/.minimist.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: ms@2.0.0 (node_modules/fsevents/node_modules/ms):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/ms' -> '<path>/node_modules/fsevents/node_modules/.ms.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: npm-bundled@1.0.3 (node_modules/fsevents/node_modules/npm-bundled):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/npm-bundled' -> '<path>/node_modules/fsevents/node_modules/.npm-bundled.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: number-is-nan@1.0.1 (node_modules/fsevents/node_modules/number-is-nan):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/number-is-nan' -> '<path>/node_modules/fsevents/node_modules/.number-is-nan.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: object-assign@4.1.1 (node_modules/fsevents/node_modules/object-assign):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/object-assign' -> '<path>/node_modules/fsevents/node_modules/.object-assign.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: os-homedir@1.0.2 (node_modules/fsevents/node_modules/os-homedir):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/os-homedir' -> '<path>/node_modules/fsevents/node_modules/.os-homedir.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: os-tmpdir@1.0.2 (node_modules/fsevents/node_modules/os-tmpdir):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/os-tmpdir' -> '<path>/node_modules/fsevents/node_modules/.os-tmpdir.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: path-is-absolute@1.0.1 (node_modules/fsevents/node_modules/path-is-absolute):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/path-is-absolute' -> '<path>/node_modules/fsevents/node_modules/.path-is-absolute.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: process-nextick-args@2.0.0 (node_modules/fsevents/node_modules/process-nextick-args):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/process-nextick-args' -> '<path>/node_modules/fsevents/node_modules/.process-nextick-args.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: minimist@1.2.0 (node_modules/fsevents/node_modules/rc/node_modules/minimist):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/rc/node_modules/minimist' -> '<path>/node_modules/fsevents/node_modules/rc/node_modules/.minimist.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: safe-buffer@5.1.1 (node_modules/fsevents/node_modules/safe-buffer):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/safe-buffer' -> '<path>/node_modules/fsevents/node_modules/.safe-buffer.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: safer-buffer@2.1.2 (node_modules/fsevents/node_modules/safer-buffer):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/safer-buffer' -> '<path>/node_modules/fsevents/node_modules/.safer-buffer.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: sax@1.2.4 (node_modules/fsevents/node_modules/sax):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/sax' -> '<path>/node_modules/fsevents/node_modules/.sax.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: semver@5.5.0 (node_modules/fsevents/node_modules/semver):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/semver' -> '<path>/node_modules/fsevents/node_modules/.semver.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: set-blocking@2.0.0 (node_modules/fsevents/node_modules/set-blocking):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/set-blocking' -> '<path>/node_modules/fsevents/node_modules/.set-blocking.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: signal-exit@3.0.2 (node_modules/fsevents/node_modules/signal-exit):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/signal-exit' -> '<path>/node_modules/fsevents/node_modules/.signal-exit.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: strip-json-comments@2.0.1 (node_modules/fsevents/node_modules/strip-json-comments):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/strip-json-comments' -> '<path>/node_modules/fsevents/node_modules/.strip-json-comments.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: util-deprecate@1.0.2 (node_modules/fsevents/node_modules/util-deprecate):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/util-deprecate' -> '<path>/node_modules/fsevents/node_modules/.util-deprecate.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: wrappy@1.0.2 (node_modules/fsevents/node_modules/wrappy):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/wrappy' -> '<path>/node_modules/fsevents/node_modules/.wrappy.DELETE'
      npm WARN optional SKIPPING OPTIONAL DEPENDENCY: yallist@3.0.2 (node_modules/fsevents/node_modules/yallist):
      npm WARN enoent SKIPPING OPTIONAL DEPENDENCY: ENOENT: no such file or directory, rename '<path>/node_modules/fsevents/node_modules/yallist' -> '<path>/node_modules/fsevents/node_modules/.yallist.DELETE'
      
      + grunt-cli@1.3.2
      + grunt@1.0.3
      + yo@2.0.5
      + gulp@4.0.0
      + karma@3.1.4
      added 778 packages from 710 contributors in 62.998s
      ```

   2. Publish packages on offline

      ```shell
      $ git clone https://github.com/rms1000watt/hello-world-npm.git
      Cloning into 'hello-world-npm'...
      remote: Enumerating objects: 92, done.
      remote: Total 92 (delta 0), reused 0 (delta 0), pack-reused 92
      Unpacking objects: 100% (92/92), done.
      Checking connectivity... done.
      $ cd hello-world-npm
      $ cat > .npmrc << "EOF"
      > email=foo@example.com
      > always-auth=true
      > _auth=YWRtaW46YWRtaW4xMjM=
      > 
      > registry=http://localhost/nexus/repository/npm-hosted/
      > EOF
      $ npm publish
      npm notice 
      npm notice 📦  hello-world-npm@1.1.0
      npm notice === Tarball Contents === 
      npm notice 628B   package.json
      npm notice 89B    bin.js      
      npm notice 16.3kB example.gif 
      npm notice 167B   init.sh     
      npm notice 570B   Readme.md   
      npm notice 175B   lib/index.js
      npm notice === Tarball Details === 
      npm notice name:          hello-world-npm                         
      npm notice version:       1.1.0                                   
      npm notice package size:  13.5 kB                                 
      npm notice unpacked size: 17.9 kB                                 
      npm notice shasum:        6e717871ff2c65f715871c16e411728c8b8f9e83
      npm notice integrity:     sha512-qMeOvwNqgWFn8[...]QLpnzRibfaxug==
      npm notice total files:   6                                       
      npm notice 
      + hello-world-npm@1.1.0
      ```

