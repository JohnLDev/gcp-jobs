FROM golang:latest as builder

WORKDIR /app

COPY . /app/

RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o server -ldflags="-w -s" ./main.go

FROM scratch

COPY --from=builder /app/server /server

ENTRYPOINT ["/server"]