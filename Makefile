guard-%:
	@ if [ "${${*}}" = "" ]; then \
    echo "Environment variable $* not set"; \
    exit 1; \
  fi

.PHONY: docker.build
docker.build: guard-VERSION
	docker build -t quay.io/fortawesome/devenv-https-proxy:$(VERSION) -f Dockerfile .
