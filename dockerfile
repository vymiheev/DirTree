# docker build -t vymiheev/dir_tree:0.1 .
# docker run --rm vymiheev/dir_tree:0.1
# docker run --rm --name dir_tree --mount type=bind,source=/,target=/mnt_dir vymiheev/dir_tree:0.1
FROM golang:1.9.2
RUN mkdir /mnt_dir_tree
WORKDIR /mnt_dir_tree
COPY . .
RUN go test -v
ENTRYPOINT ["go", "run", "main.go"]
CMD ["-p="$(pwd)""]