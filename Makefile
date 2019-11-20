NAME:=faas-grafana
# VERSION is tracking the version of grafana that is being used in grafana/Dockerfile
VERSION:=6.3.6
DOCKER_REPOSITORY:=georgenicoll
DOCKER_IMAGE_NAME:=$(DOCKER_REPOSITORY)/$(NAME)

.PHONY: build
build:
	@cd grafana ; docker build -t $(DOCKER_IMAGE_NAME):$(VERSION) .

.PHONY: push
push:
	@docker push $(DOCKER_IMAGE_NAME):$(VERSION)
