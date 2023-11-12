NAME := gsession
REGISTRY := sarlos
TAG := 5.4.0

IMAGE := $(REGISTRY)/$(NAME):$(TAG)
PLATFORM := linux/amd64,linux/arm64,linux/arm/v7

build:
	docker buildx build --platform $(PLATFORM) -t $(IMAGE) --push --progress plain .

clean:
	docker system prune -f
