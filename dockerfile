# docker build -t dir_tree .
FROM golang:1.9.2
COPY . .
RUN go test -v
CMD [ "go", "run", "main.go" ]