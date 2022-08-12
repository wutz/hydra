FROM rust:1-bullseye as build

# create a new empty shell project
RUN USER=root cargo new --bin http-proxy
WORKDIR /http-proxy

# copy over your manifests
COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

# this build step will cache your dependencies
RUN cargo build --release \
    && rm src/*.rs \
    && apt update \
    && apt install -y cmake

# copy your source tree
COPY ./src ./src

# build for release
RUN rm ./target/release/deps/http_proxy* \
    && cargo build --release

# our final base
FROM debian:bullseye-slim
ENV TZ=Asia/Shanghai

# copy the build artifact from the build stage
COPY --from=build /http-proxy/target/release/http-proxy /usr/bin/http-proxy

# set the startup command to run your binary
CMD ["/usr/bin/http-proxy"]