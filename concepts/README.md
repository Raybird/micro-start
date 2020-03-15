# concepts

## gen pb

```
protoc -I hello -I${GOPATH}/src --go_out=plugins=grpc:hello hello/*.proto
```

## run server

```
project_path/concepts $ go run server/main.go 
```

## run client

```
project_path/concepts $ go run client/main.go

```