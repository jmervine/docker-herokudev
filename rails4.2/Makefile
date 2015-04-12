image=jmervine/herokudev-rails
version=4.2

build:
	docker build -t $(image):$(version) .
	docker tag $(image):$(version) \
		$(image):latest

push:
	docker push $(image):$(version)
	docker push $(image):latest
