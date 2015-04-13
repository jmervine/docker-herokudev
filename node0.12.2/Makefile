image=jmervine/herokudev-node
version=0.12.2

build:
	docker build -t $(image):$(version) .
	docker tag -f $(image):$(version) \
		$(image):latest

push:
	docker push $(image):$(version)
	docker push $(image):latest
