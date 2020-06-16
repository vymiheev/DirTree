This is simple GoLang implementation of unix command: `tree` just for joy.
It started as first week homework on coursera https://www.coursera.org/learn/golang-webservices-1/home/welcome, 
and I go ahead changing output format and adding extra CLI flag.   
 
Files and directories are sorted lexicographically. 
To run (use -f flag to see files in output):
`go run main.go -p=<path>`
If you don't want to see files you can disable with: `-f=false`
To restrict max depth to 3, for example, use: `-d=3`

check test pass:
`go test -v`

to install in local GoLang repository, type: 
`go install vymiheev/trygo/dirtree`
