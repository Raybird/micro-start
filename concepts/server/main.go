package main

import (
	"github.com/Raybird/micro-start/concepts/hello"
	"log"
	"net"

	"google.golang.org/grpc"
)

const (
	port = ":50051"
)

func main() {
	lis, err := net.Listen("tcp", port)
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	s := grpc.NewServer()

	hello.RegisterHelloServiceServer(s, &hello.Server{})
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
