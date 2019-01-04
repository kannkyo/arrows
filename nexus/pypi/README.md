1. Initialize

   1. Make `.pypirc` file
   2. Make `pip.conf` file

2. Download new packages on online

   1. Make `.pypirc` file

   2. Make `pip.conf` file

   3. Install packages

      ```shell
      $ sudo pip install --no-cache-dir --index-url http://localhost/nexus/repository/pypi-group/simple <package>
      ```

3. Install new packages on offline

   1. Make `.pypirc` file

   2. Make `pip.conf` file

   3. Install packages

      ```shell
      $ sudo pip install --no-cache-dir --index-url http://localhost/nexus/repository/pypi-group/simple <package>
      ```

4. Register packages on offline

   1. Make `.pypirc` file

   2. Make `pip.conf` file

   3. Register packages

      ```shell
      $ twine upload --repository-url http://localhost/nexus/repository/pypi-hosted/ -u admin -p admin123 <package>
      ```

5. Example

   TBD