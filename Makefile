VERSION ?= v4.0.0

all: docker

docker:
	docker build -t pasientskyhosting/docker-wazuh-agent:latest . && \
	docker build -t pasientskyhosting/docker-wazuh-agent:$(VERSION) .

docker-run:
	docker run pasientskyhosting/docker-wazuh-agent:$(VERSION)

docker-push:
	docker push pasientskyhosting/docker-wazuh-agent:$(VERSION)
