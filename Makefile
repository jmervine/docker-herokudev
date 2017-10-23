IMAGEND=$(echo "$(GOBIN)/imagend")

test:
	imagend -b=false -p=false -x=false

suite:
	imagend

$(IMAGEND):
	go get -v github.com/jmervine/imagend
