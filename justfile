run:
  go fmt
  just lint
  just test
  go build -o notely && ./notely

test:
  go test ./... -cover

lint:
  staticcheck ./...

sec:
  gosec ./...
