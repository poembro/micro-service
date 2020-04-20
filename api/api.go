package main

import (
	"github.com/micro/go-micro/v2"
	"log"
	"micro-service/api/handler"

	post "micro-service/proto/post"
	user "micro-service/proto/user"
)

// 将grpc服务转为restful接口
func main() {
	srv := micro.NewService(
		micro.Name("go.micro.api.user"),
	)

	// parse command line flags
	srv.Init()

	srv.Server().Handle(
		srv.Server().NewHandler(
			&handler.Say{Client: user.NewUserService("go.micro.srv.user", srv.Client())},
		),
	)
	srv.Server().Handle(
		srv.Server().NewHandler(
			&handler.Article{Client: post.NewPostService("go.micro.srv.user", srv.Client())},
		),
	)

	if err := srv.Run(); err != nil {
		log.Fatal(err)
	}
}
