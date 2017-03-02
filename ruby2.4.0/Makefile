image=jmervine/herokudev-ruby
version=2.4.0

build:
	docker build -t $(image):$(version) .
	docker rmi $(image):latest || true
	docker tag $(image):$(version) \
		$(image):latest

push:
	docker push $(image):$(version)
	docker push $(image):latest
