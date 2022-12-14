FROM golang:1.16.0-alpine3.12 AS BUILD_GOLANG
WORKDIR /app
COPY ./go.mod ./go.mod
COPY ./go.sum ./go.sum
COPY ./main.go ./main.go
COPY ./bin ./bin
COPY ./cmd ./cmd
COPY ./pkg ./pkg
COPY ./Makefile ./Makefile
RUN apk add --update make
RUN make build.bin

FROM golang:1.16.0-alpine3.12 AS RUN
ENV SUBCOMMAND=${SUBCOMMAND:-"--version"}
WORKDIR /app
COPY --from=BUILD_GOLANG /app/bin /app/bin
CMD exec /app/bin/{{.ProjectName}} ${SUBCOMMAND}
