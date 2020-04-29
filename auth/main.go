package main

import (
	"fmt"

	"github.com/poembro/micro-service/auth/handler"
	"github.com/poembro/micro-service/auth/model"
	s "github.com/poembro/micro-service/auth/proto/auth"

	"github.com/poembro/micro-service/basic"
	"github.com/poembro/micro-service/basic/common"
	"github.com/poembro/micro-service/basic/config"
	
	//z "github.com/poembro/micro-service/plugins/zap"

	"github.com/micro/cli/v2"
	"github.com/micro/go-micro/v2"
	"github.com/micro/go-micro/v2/registry"
	"github.com/micro/go-micro/v2/registry/etcd"
	log "github.com/micro/go-micro/v2/logger"
	"github.com/micro/go-plugins/config/source/grpc"

	//"go.uber.org/zap"
)

var (
	//log  *z.Logger   = z.GetLogger()
	appName = "auth_srv"
	cfg     = &authCfg{}
)

type authCfg struct {
	common.AppCfg
}

func main() {
	// 初始化配置、数据库等信息
	initCfg()

	// 使用etcd注册
	micReg := etcd.NewRegistry(registryOptions)

	// 新建服务
	service := micro.NewService(
		micro.Name(cfg.Name),
		micro.Registry(micReg),
		micro.Version(cfg.Version),
		micro.Address(cfg.Addr()),
	)

	// 服务初始化
	service.Init(
		micro.Action(func(c *cli.Context) error {
			// 初始化handler
			model.Init()
			// 初始化handler
			handler.Init()
			return nil
		}),
	)

	// 注册服务
	s.RegisterAuthHandler(service.Server(), new(handler.Service))

	// 启动服务
	if err := service.Run(); err != nil {
		log.Fatal(err)
	}
}

func registryOptions(ops *registry.Options) {
	etcdCfg := &common.Etcd{}
	err := config.C().App("etcd", etcdCfg)
	if err != nil {
		panic(err)
	}

	ops.Addrs = []string{fmt.Sprintf("%s:%d", etcdCfg.Host, etcdCfg.Port)}
}

func initCfg() {
	source := grpc.NewSource(
		grpc.WithAddress("127.0.0.1:9600"),
		grpc.WithPath("micro"),
	)

	basic.Init(
		config.WithSource(source),
		config.WithApp(appName),
	)
	

	err := config.C().App(appName, cfg)
	if err != nil {
		panic(err)
	}

	log.Infof("[initCfg] 配置，cfg：%v", cfg)

	return
}
