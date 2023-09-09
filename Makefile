NAME := gsession
REGISTRY := sarlos
TAG := 5.1.3

build:
	docker build -t $(REGISTRY)/$(NAME):$(TAG)  .

push:
	docker push $(REGISTRY)/$(NAME):$(TAG)

clean:
	docker system prune -f
