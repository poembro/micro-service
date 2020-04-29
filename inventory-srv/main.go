package main

import (
	"fmt"
    "time"
	"github.com/poembro/micro-service/basic"
	"github.com/poembro/micro-service/basic/common"
	"github.com/poembro/micro-service/basic/config"
	"github.com/poembro/micro-service/inventory-srv/handler"
	"github.com/poembro/micro-service/inventory-srv/model"
	proto "github.com/poembro/micro-service/inventory-srv/proto/inventory"
	"github.com/micro/cli/v2"
	"github.com/micro/go-micro/v2"
	"github.com/micro/go-micro/v2/registry"
	"github.com/micro/go-micro/v2/registry/etcd" 
	log "github.com/micro/go-micro/v2/logger"
	"github.com/micro/go-plugins/config/source/grpc"
)

var (
	appName = "inv_srv"
	cfg     = &appCfg{}
)

type appCfg struct {
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
		micro.RegisterTTL(time.Second*15),
		micro.RegisterInterval(time.Second*10), 
		micro.Registry(micReg),
		micro.Version(cfg.Version),
	)

	// 服务初始化
	service.Init(
		micro.Action(func(c *cli.Context) error {
			// 初始化模型层
			model.Init()
			// 初始化handler
			handler.Init()
			return nil
		}),
	)

	// 注册服务
	proto.RegisterInventoryHandler(service.Server(), new(handler.Service))

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
	//configAddr := os.Getenv("MICRO_BOOK_CONFIG_GRPC_ADDR")
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
