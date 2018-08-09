# docker-embulk

[![Docker Pulls](https://img.shields.io/docker/pulls/tkuchiki/embulk.svg?style=for-the-badge)](https://hub.docker.com/r/tkuchiki/embulk/)

## Build

```console
$ make build docker_tag="tkuchiki/embulk"

$ make build docker_tag="tkuchiki/embulk" jdk_version="8" embulk_version="0.9.7"
```

## docker run

```
# show help
$ docker run tkuchiki/embulk

# show version
$ docker run tkuchiki/embulk --version

# embulk gem install & embulk preview
$ docker run -v $(pwd)/config.yml:/tmp/config.yml -v $(pwd)/plugins.txt:/opt/embulk/plugins.txt --rm -it tkuchiki/embulk preview /tmp/config.yml
```
