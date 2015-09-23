image=jmervine/herokudev-ruby
version=2.2.3

build:
	docker build -t $(image):$(version) .
	docker tag -f $(image):$(version) \
		$(image):latest

push:
	docker push $(image):$(version)
	docker push $(image):latest
