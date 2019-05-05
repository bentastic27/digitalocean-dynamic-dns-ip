FROM golang:latest
WORKDIR /go/src/digitalocean-dynamic-dns-ip
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
RUN mkdir /config
CMD ["digitalocean-dynamic-dns-ip"]