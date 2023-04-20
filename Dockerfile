FROM golang:1.20.3 AS build

WORKDIR /app
COPY . .
RUN go build -o app .

FROM scratch
COPY --from=build /app/app /app
CMD ["/app"]
