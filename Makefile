jdk_version ?= "8"
embulk_version ?= "0.9.7"

build:
	docker build . -t $(docker_tag) --build-arg jdk_version=$(jdk_version) --build-arg embulk_version=$(embulk_version)
	docker build . -t $(docker_tag):$(embulk_version) --build-arg jdk_version=$(jdk_version) --build-arg embulk_version=$(embulk_version)

push:
	docker push $(docker_tag)
	docker push $(docker_tag):$(embulk_version)
