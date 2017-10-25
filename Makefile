IMAGEND=$(echo "$(GOBIN)/imagend")

test: $(IMAGEND)
	imagend --verify

docs: $(IMAGEND)
	imagend --docs

suite: $(IMAGEND)
	imagend

$(IMAGEND):
	go get -v github.com/jmervine/imagend
