module github.com/Raybird/micro-start

go 1.13

require (
	github.com/gin-gonic/gin v1.3.0
	github.com/golang/protobuf v1.4.0-rc.4
	github.com/micro/examples v0.2.0 // indirect
	github.com/micro/go-micro/v2 v2.2.0
	github.com/micro/protoc-gen-micro/v2 v2.0.0 // indirect
	golang.org/x/net v0.0.0-20200301022130-244492dfa37a // indirect
	golang.org/x/sys v0.0.0-20200302150141-5c8b2ff67527 // indirect
	google.golang.org/genproto v0.0.0-20200313141609-30c55424f95d // indirect
	google.golang.org/grpc v1.28.0
	google.golang.org/protobuf v1.20.1 // indirect
)

replace google.golang.org/grpc v1.28.0 => google.golang.org/grpc v1.26.0
