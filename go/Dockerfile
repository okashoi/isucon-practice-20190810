FROM golang:1.12-alpine

RUN apk add --no-cache make git

COPY ./ /go/src/github.com/okashoi/isucon-practice-20190810/

WORKDIR /go/src/github.com/okashoi/isucon-practice-20190810/

RUN make setup build
