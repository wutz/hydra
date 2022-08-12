# Hydra

A http proxy come from [axum](https://github.com/tokio-rs/axum/blob/main/examples/http-proxy/src/main.rs)
with custom listen address.

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
    -p 3000:3000 \
    -e HYDRA_LISTEN=0.0.0.0:3000 \
    ghcr.io/wutz/hydra:v0.1.0
```