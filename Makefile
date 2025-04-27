.DEFAULT_GOAL := build

.PHONY:fmt vet build
fmt:
	go fmt ./...

vet: fmt
	go vet ./...

build: vet
	go build -o todo ./cmd/todo

clean:
	go clean ./cmd/todo
	rm -f todo
	rm -f .todo.json

test:
	go test -v ./...
