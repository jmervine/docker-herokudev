image=jmervine/herokudev
version=cedar14

build:
	docker build -t $(image):$(version) .
	docker tag -f $(image):$(version) \
		$(image):latest

push:
	docker push $(image):$(version)
	docker push $(image):latest

rebuild:
	# build everything in order, go take a nap
	make build
	cd ruby2.2.1; make build
	cd rails4.2; make build

repush:
	# push everything in order, run to the store, you've got time
	make push
	cd ruby2.2.1; make push
	cd rails4.2; make push
