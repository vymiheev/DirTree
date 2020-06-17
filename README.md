# DirTree

This is simple GoLang implementation of unix command: `tree` just for joy.
It started as first week homework on coursera https://www.coursera.org/learn/golang-webservices-1/home/welcome, 
and I go ahead changing output format and adding extra CLI flag.   
 
## GO USE
Files and directories sorted lexicographically. 
To run (use -f flag to see files in output):
`go run main.go -p=<path>`
If you don't want to see files you can disable with: `-f=false`
To restrict max depth to 3, for example, use: `-d=3`

Check test pass:
`go test -v`

To install in local GoLang repository, type: 
`go install vymiheev/trygo/dirtree`


## DOCKER USE
Create new docker image:
`docker build -t vymiheev/dir_tree:0.1 .`

To run container it is easier to use bash script `dir_tree.sh` than to run docker manually.
You can pass args like this: 

`--d 10` - that means depth for file traversing, that equals 10 here. 
By default, it's unlimited.

`--p /Users/Guest/` - file path. If not set, default is your current directory.

`--f false` - should print files or not. By default, it's true.

Full example:
`./dir_tree.sh --d 10 --p /etc/apache2`


Of course, you can type 'docker run' and full invocation will be like:

`docker run --rm -v /:/mnt_dir_tree:ro vymiheev/dir_tree:0.1 -p=/mnt_dir_tree/Users`

but as you see line is bigger and not so pretty as bash script.