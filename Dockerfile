FROM golang:latest
WORKDIR /go/src/app
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
RUN mkdir /config
CMD ["app"]