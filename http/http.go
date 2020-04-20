package main

import (
	"github.com/micro/go-micro/web"
	"log" 
	"micro-service/http/handler" 
	user "micro-service/proto/user"
)

// micro web 服务
func main() {
	service := web.NewService(
		web.Name("go.micro.web.user"),
		web.Address(8080),
		web.StaticDir("web"),
	)

	// parse command line flags
	service.Init()


	if err := service.Run(); err != nil {
		log.Fatal(err)
	}
}
