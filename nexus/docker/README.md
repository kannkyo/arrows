1. Usage

   1. Login registory

      ```shell
      $ docker login localhost:48082
      ```

   2. Pull image

      ```shell
      $ docker pull localhost:48082/<image>
      ```

   3. Remove image

      ```shell
      $ docker pull rmi localhost:48082/<image>
      ```

   4. Push image

      ```shell
      $ docker tag <imageId or imageName> localhost:48083/<image>
      $ docker push localhost:48083/<image>
      ```

2. Example

   1. Pull

       ```shell
       $ docker login localhost:48082
       Username: admin
       Password: 
       WARNING! Your password will be stored unencrypted in /home/<user>/.docker/config.json.
       Configure a credential helper to remove this warning. See
       https://docs.docker.com/engine/reference/commandline/login/#credentials-store
       
       Login Succeeded
       $ docker pull localhost:48082/hello-world
       Using default tag: latest
       latest: Pulling from hello-world
       1b930d010525: Pull complete 
       Digest: sha256:92c7f9c92844bbbb5d0a101b22f7c2a7949e40f8ea90c8b3bc396879d95e899a
       Status: Downloaded newer image for localhost:48082/hello-world:latest
       
       $ docker run localhost:48082/hello-world
       
       Hello from Docker!
       This message shows that your installation appears to be working correctly.
       
       To generate this message, Docker took the following steps:
        1. The Docker client contacted the Docker daemon.
        2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
           (amd64)
        3. The Docker daemon created a new container from that image which runs the
           executable that produces the output you are currently reading.
        4. The Docker daemon streamed that output to the Docker client, which sent it
           to your terminal.
       
       To try something more ambitious, you can run an Ubuntu container with:
        $ docker run -it ubuntu bash
       
       Share images, automate workflows, and more with a free Docker ID:
        https://hub.docker.com/
       
       For more examples and ideas, visit:
        https://docs.docker.com/get-started/
       
       ```

   2. Push

       ```shell
       $ docker login localhost:48083
       Username: admin
       Password: 
       WARNING! Your password will be stored unencrypted in /home/<user>/.docker/config.json.
       Configure a credential helper to remove this warning. See
       https://docs.docker.com/engine/reference/commandline/login/#credentials-store

       Login Succeeded
       $ docker tag fce289e99eb9 localhost:48083/hello-world2
       $ docker push localhost:48083/hello-world2
       The push refers to repository [localhost:48083/hello-world2]
       af0b15c8625b: Pushed 
       latest: digest: sha256:92c7f9c92844bbbb5d0a101b22f7c2a7949e40f8ea90c8b3bc396879d95e899a size: 524

       ```

3. User information

   1. administrator

      username: admin

      password: admin123

