# Hydra

A http proxy base on [hyper](https://github.com/hyperium/hyper/blob/v0.14.20/examples/http_proxy.rs)

## How to use

Start hydra service:

```
$ docker run \
    -p 3000:3000 \
    ghcr.io/wutz/hydra:v0.1.0
```

Access by hydra:

```sh
$ curl -v -x "127.0.0.1:3000" https://tokio.rs
```

Custom listen address:

```sh
$ docker run \
    -p 6000:6000 \
    -e HYDRA_LISTEN=0.0.0.0:6000 \
    ghcr.io/wutz/hydra:v0.1.0
```