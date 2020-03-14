# micro-go

this version has bug to fix

## Require

### protoc

  >sudo snap install protobuf --classic

### etcd

  >sudo snap install etcd

## Run

### compiler

1. cd proto
1. project/path/proto$ > protoc --go_out=. --micro_out=. *.proto

### server

1. project/path$ > MICRO_REGISTRY=etcd go run cmd/server/main.go

### client

1. project/path$ > MICRO_REGISTRY=etcd go run cmd/client/main.go


### known issue

1. etcd v3.3.18+incompatible
```
# github.com/coreos/etcd/clientv3/balancer/resolver/endpoint
../../../go/pkg/mod/github.com/coreos/etcd@v3.3.18+incompatible/clientv3/balancer/resolver/endpoint/endpoint.go:114:78: undefined: resolver.BuildOption
../../../go/pkg/mod/github.com/coreos/etcd@v3.3.18+incompatible/clientv3/balancer/resolver/endpoint/endpoint.go:182:31: undefined: resolver.ResolveNowOption
# github.com/coreos/etcd/clientv3/balancer/picker
../../../go/pkg/mod/github.com/coreos/etcd@v3.3.18+incompatible/clientv3/balancer/picker/err.go:37:44: undefined: balancer.PickOptions
../../../go/pkg/mod/github.com/coreos/etcd@v3.3.18+incompatible/clientv3/balancer/picker/roundrobin_balanced.go:55:54: undefined: balancer.PickOptions
```
  **go.mod**
>replace google.golang.org/grpc v1.28.0 => google.golang.org/grpc v1.26.0

 

