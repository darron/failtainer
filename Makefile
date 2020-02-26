CONTAINER_NAME ?= darron/failtainer

all: normal fail delay random

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

normal: ## Build Normal Docker image
	docker build . -t $(CONTAINER_NAME):normal -f Dockerfile-normal

fail: ## Build Fail Docker image
	docker build . -t $(CONTAINER_NAME):fail -f Dockerfile-fail

delay: ## Build Delay Docker image
	docker build . -t $(CONTAINER_NAME):delay -f Dockerfile-delay

random: ## Build Delay Docker image
	docker build . -t $(CONTAINER_NAME):random -f Dockerfile-random

.PHONY: help normal fail delay
