# docker build -t vymiheev/dir_tree:0.1 .
# docker run --rm -v /:/mnt_dir_tree:ro vymiheev/dir_tree:0.1 -p=/mnt_dir_tree/Users

FROM golang:1.9.2
RUN mkdir /mnt_dir_tree
COPY . .
RUN go test -v
ENTRYPOINT ["go", "run", "main.go"]
# CMD ["-p="$(pwd)""]