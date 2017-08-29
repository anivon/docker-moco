# docker-moco

Unofficial Alpine Linux Moco container.

## How to run it?

```shell
$ docker run -v /my/own/moco-directory:/var/moco -p 8000:8000 rezzza/docker-moco:latest
```

**Important:** you moco directory must contain a moco.json file.
