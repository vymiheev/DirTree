# docker build -t dir_tree .
# docker run --rm dir_tree
FROM golang:1.9.2
COPY . .
RUN go test -v
ENTRYPOINT ["go", "run", "main.go"]
CMD ["-f="."]