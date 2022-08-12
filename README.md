# HTTP Proxy

## How to use

```
$ docker run \
    -p 3000:3000 \
    ghcr.io/wutz/http-proxy:v0.1.0
```

custom listen address

```sh
$ docker run \
    -p 6000:6000 \
    -e HTTP_PROXY_LISTEN=0.0.0.0:6000 \
    ghcr.io/wutz/http-proxy:v0.1.0
```