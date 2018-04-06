build: deps
	make recompile

recompile:
	env GOOS=linux go build -o bin/hello hello/main.go
	env GOOS=linux go build -o bin/world world/main.go

deps:
	go get github.com/aws/aws-lambda-go/lambda
	go get github.com/aws/aws-lambda-go/events

supervise:
	supervisor --no-restart-on exit -e go -i bin --exec make -- recompile

start-local:
	aws-sam-local local start-api

watch:
	make supervise & make start-local

clean:
	rm -rf bin/*