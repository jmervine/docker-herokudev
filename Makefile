image=jmervine/herokudev
version=cedar14
node_version=4.2.2

build:
	docker build -t $(image):$(version) .
	docker tag -f $(image):$(version) \
		$(image):latest
	docker tag -f $(image):$(version) \
		$(image)-node:latest
	docker tag -f $(image):$(version) \
		$(image)-node:$(node_version)

push:
	docker push $(image):$(version)
	docker push $(image):latest
	docker push $(image)-node:latest
	docker push $(image)-node:$(node_version)

rebuild/ruby:
	cd ruby1.9.3; make build
	cd ruby2.2.1; make build
	cd ruby2.1.2; make build
	cd ruby2.2.2; make build
	cd ruby2.2.3; make build
	cd ruby2.2.4; make build
	cd ruby2.3.0; make build

rebuild:
	# build everything in order, go take a nap
	make build
	make rebuild/main
	make rebuild/ruby

repush/ruby:
	cd ruby1.9.3; make push
	cd ruby2.2.1; make push
	cd ruby2.1.2; make push
	cd ruby2.2.2; make push
	cd ruby2.2.3; make push
	cd ruby2.2.4; make push
	cd ruby2.3.0; make push
	cd rails3.2; make push
	cd rails4.2; make push

repush:
	# push everything in order, run to the store, you've got time
	make push

