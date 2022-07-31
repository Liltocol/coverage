FROM golang:1.18.4-buster as dev

WORKDIR /go/src/app
COPY . .



RUN go get -u github.com/cosmtrek/air && \
    go build -o /go/bin/air github.com/cosmtrek/air

CMD ["air", "-c", ".air.toml"]