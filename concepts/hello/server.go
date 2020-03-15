package hello

import (
	"context"
	"log"
)

type Server struct{}

func (s *Server) SayHello(c context.Context, req *HelloRequest) (*HelloResponse, error) {
	log.Printf("Received: %v", req.GetGreeting())
	reply := "Hello" + req.GetGreeting()
	resp := HelloResponse{Reply: reply}

	return &resp, nil
}
