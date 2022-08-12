REPO ?= ghcr.io/wutz/hydra
VERSION ?= $(shell git describe --always --tags)

.PHONY: docker-build
docker-build:
	docker build \
		--platform linux/amd64 \
		-t $(REPO):$(VERSION) .