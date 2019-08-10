.PHONY: setup build

dep:
	go get github.com/golang/dep/cmd/dep

setup: dep
	dep ensure

build:
	go build -o server .

