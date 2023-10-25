FROM golang:alpine AS builder

WORKDIR /app

COPY desafio_go.go ./

RUN go build desafio_go.go

FROM scratch

COPY --from=builder /app /

CMD [ "./desafio_go" ]