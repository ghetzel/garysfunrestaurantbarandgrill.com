.PHONY: run bin
.EXPORT_ALL_VARIABLES:

CONTAINER ?= ghetzel/garysfunrestaurantbarandgrill.com:latest

all: run

run:
	diecast -L debug -a :28419

docker:
	docker build -t $(CONTAINER) .
	docker push $(CONTAINER)