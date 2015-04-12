image=jmervine/herokudev
version=cedar14

build:
	docker build -t $(image):$(version) .
	docker tag $(image):$(version) \
		$(image):latest

push:
	docker push $(image):$(version)
	docker push $(image):latest
