run:
  just test
  go build -o notely && ./notely

test:
  go test ./... -cover
