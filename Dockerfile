FROM golang

COPY ./config.yaml /etc/honeytail/config.yaml
COPY . /go/src/github.com/honeycombio/honeycomb-kubernetes-agent
RUN go install github.com/honeycombio/honeycomb-kubernetes-agent
ENTRYPOINT /go/bin/honeycomb-kubernetes-agent