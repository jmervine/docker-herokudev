image=jmervine/herokudev-ruby
version=2.3.0

build:
	docker build -t $(image):$(version) .

push:
	docker push $(image):$(version)
	docker push $(image):latest
