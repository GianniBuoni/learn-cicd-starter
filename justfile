db_url:= env('DATABASE_URL')

run:
  go fmt
  just lint
  just test
  go build -o notely && ./notely

build:
  CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o notely
  docker build -t buongian/notely:latest .

docker-run:
  docker run -e PORT=8080 -p 8080:8080 buongian/notely:latest

test:
  go test ./... -cover

lint:
  staticcheck ./...

sec:
  gosec ./...

[working-directory: 'sql/schema']
migrate:
  goose turso {{db_url}} up
