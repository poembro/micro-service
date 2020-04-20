package main

import (
	"context"
	"fmt"
    "time"
	micro "github.com/micro/go-micro/v2"
	userProto "micro-service/proto/user"
)

// 使用方式：将下面代码插入到web，api项目中来调用user.QueryUserByName服务
func main() {
	// Create a new service
	service := micro.NewService(
		micro.Name("user.client"),
		micro.RegisterTTL(time.Second * 15),
		micro.RegisterInterval(time.Second * 10),
	)
	// Initialise the client and parse command line flags
	service.Init()

	// Create new user client
	user := userProto.NewUserService("go.micro.srv.user", service.Client())

	// Call the user
	rsp, err := user.QueryUserByName(context.TODO(), &userProto.Request{UserName: "John"})
	if err != nil {
		fmt.Println(err)
	}

	// Print response
	fmt.Println(rsp.GetUser())
}
