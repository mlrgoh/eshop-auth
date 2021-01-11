FROM golang
MAINTAINER Richard Goh

RUN go get github.com/prometheus/client_golang/prometheus
RUN go get github.com/prometheus/client_golang/prometheus/promhttp
COPY . /go/src/github.com/mlrgoh/eshop-wishlist
WORKDIR /go/src/github.com/mlrgoh/eshop-wishlist/auth
RUN go get && go build -o /bin/auth

ENTRYPOINT ["/bin/auth"]