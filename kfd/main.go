package main

import (
	"github.com/micro/go-log"
	"github.com/micro/cli/v2"
	"github.com/micro/go-micro/v2"
	//"github.com/micro/go-micro/v2/client/selector"
	//"github.com/micro/go-micro/v2/registry"
	//"github.com/micro/go-micro/v2/registry/etcd"
	"micro-service/kfd/handler"
	post "micro-service/proto/post"
	user "micro-service/proto/user"
)

func main() {
	//reg := etcd.NewRegistry(func(options *registry.Options) {
	//	options.Addrs = []string{
	//		"xx.xx.xx.xx:2379",
	//	}
	//  options.Timeout = time.Second * 10 随便写的
	//   options.Secure = true
	//   options.TLSConfig
	//   options.Context
	//})
	//micro.Selector(selector.NewSelector(func(options *selector.Options) {
	//	options.Registry=reg
	//}))
	// New Service
	srv := micro.NewService(
		// micro.RegisterTTL(time.Second * 15),
		// micro.RegisterInterval(time.Second * 10),
		// micro.Registry(reg),
		micro.Name("go.micro.srv.user"),
		micro.Version("latest"),
	)

	// Initialise srv
	srv.Init(
		micro.Action(func(c *cli.Context)error{
			log.Log("启动前 初始化模型层 如 mysql todo")
			return nil
		}),
		//启动之前做的事情
		micro.BeforeStart(func()error{
			log.Log("启动前 钩子 日志 todo")
			return nil
		}),
		micro.AfterStart(func()error{
			log.Log("启动后  钩子 日志 todo")
			return nil
		}),
		micro.AfterStop(func() error {
			log.Log("srv is stop ... todo")
			return nil
		}),
	)

	// Register Handler
	user.RegisterUserHandler(srv.Server(), new(handler.User))
	post.RegisterPostHandler(srv.Server(), new(handler.Post))

	// Run srv
	if err := srv.Run(); err != nil {
		log.Fatal(err)
	}
}
