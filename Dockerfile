FROM golang:alpine3.11

ENV GO111MODULE=on

WORKDIR /app/server
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN go build -o main .

CMD ["/app/server/main"]