VERSION?=latest

build:
	docker build -t cnsa/ubuntu:${VERSION} .

push:
	docker push cnsa/ubuntu:${VERSION}
