# build for arm32 like [raspberry pi] or [tinker board]
FROM arm32v6/golang:alpine as builder

RUN apk update && \
    apk upgrade && \
    apk add git
RUN go get -ldflags "-X main.VERSION=$(date -u +%Y%m%d) -s -w" github.com/xtaci/kcptun/client && go get -ldflags "-X main.VERSION=$(date -u +%Y%m%d) -s -w" github.com/xtaci/kcptun/server

FROM arm32v6/alpine:latest
COPY --from=builder /go/bin /bin