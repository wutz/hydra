# Hydra

An http proxy base on [hyper](https://github.com/hyperium/hyper/blob/v0.14.20/examples/http_proxy.rs)

## How to use

Start hydra service:

```
$ docker run \
    -d \
    -p 3000:3000 \
    ghcr.io/wutz/hydra
```

Access through the http[s] proxy provided by hydra:

```sh
$ export http_proxy=http://localhost:3000
$ export https_proxy=http://localhost:3000
$ curl -v https://tokio.rs

# or
$ curl -v -x "127.0.0.1:3000" https://tokio.rs
```

Custom listen address:

```sh
$ docker run \
    -d \
    -p 6000:6000 \
    -e HYDRA_LISTEN=0.0.0.0:6000 \
    ghcr.io/wutz/hydra
```