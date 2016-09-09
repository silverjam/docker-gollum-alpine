Dockerfile for running Gollum with the Alpine Linux docker image.

Usage example:
```console

$ mkdir my-wiki
$ cd my-wiki
$ git init
$ echo 'Hello' >Home.md
$ git commit -m 'initial'
$ git add submodule -b master --name docker https://github.com/silverjam/docker-gollum-alpine docker
$ ./docker/build.bash
$ ./docker/start-gollum.bash
```

The visit http://192.168.1.100:4567/ (or whatever your docker-machine IP is).
