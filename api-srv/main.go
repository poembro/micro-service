package main

import (
	"fmt"
    "time"
	"github.com/poembro/micro-service/basic"
	"github.com/poembro/micro-service/basic/common"
	"github.com/poembro/micro-service/basic/config"  
 
	"github.com/micro/go-micro/v2"
	"github.com/micro/go-micro/v2/registry"
	"github.com/micro/go-micro/v2/registry/etcd"
	log "github.com/micro/go-micro/v2/logger" 

	"github.com/micro/go-micro/v2/client"
	microErrors "github.com/micro/go-micro/errors"
	"github.com/poembro/micro-service/api-srv/apid"
	//"encoding/json"
	"io/ioutil"
	"net/http" 
	"strconv"
	"github.com/micro/go-plugins/config/source/grpc"
	user "github.com/poembro/micro-service/user-srv/proto/user"
)

var (
	cors   = map[string]bool{"*": true} 
	rpcClient client.Client 
	appName = "user_srv"
	cfg     = &userCfg{}
)

type userCfg struct {
	common.AppCfg
}

func main() { 
	initCfg()

	// 使用etcd注册
	micReg := etcd.NewRegistry(registryOptions)

	// 新建服务
	service := micro.NewService(
		micro.Name("mu.micro.book.srv.api"),
		micro.RegisterTTL(time.Second*15),
		micro.RegisterInterval(time.Second*10), 
		micro.Registry(micReg),
		micro.Version("v1.0"),
	)

	// 服务初始化
	service.Init( )

    rpcClient = service.Client()

	mux := http.NewServeMux()
	mux.HandleFunc("/", handleRPC)

	log.Infof("[api-srv] ：监听:8082")
	http.ListenAndServe(":8082", mux) 

}

func handleRPC(w http.ResponseWriter, r *http.Request) {
	if r.URL.Path == "/" {
		w.Write([]byte("ok,this is the server ..."))
		return
	}

	// 跨域处理
	if origin := r.Header.Get("Origin"); cors[origin] {
		w.Header().Set("Access-Control-Allow-Origin", origin)
	} else if len(origin) > 0 && cors["*"] {
		w.Header().Set("Access-Control-Allow-Origin", origin)
	}

	w.Header().Set("Access-Control-Allow-Methods", "POST, GET, OPTIONS")
	w.Header().Set("Access-Control-Allow-Headers", "Content-Type, Content-Length, Accept-Encoding, X-Token, X-Client")
	w.Header().Set("Access-Control-Allow-Credentials", "true")
	if r.Method == "OPTIONS" {
		return
	}

	if r.Method != "POST" {
		http.Error(w, "Method not allowed", http.StatusMethodNotAllowed)
		return
	}
	handleJSONRPC(w, r)
	return
}

func handleJSONRPC(w http.ResponseWriter, r *http.Request) { 
	service, method := apid.PathToReceiver("mu.micro.book.srv.", r.URL.Path)
    log.Infof("[api-srv] ：%v  ：  %v", service, method)
	br, _ := ioutil.ReadAll(r.Body)

	//request := json.RawMessage(br)
	request := user.Request{
		UserName:"micro",
	}
    log.Infof("[api-srv] req： %v       %+v", br, request)
	
	 response := user.Request{}
 
	req := rpcClient.NewRequest("mu.micro.book.srv.user", "User.QueryUserByName", &request)
	ctx := apid.RequestToContext(r)
	err := rpcClient.Call(ctx, req, &response)
	log.Infof("[api-srv] res：  %v", response)
	// make the call
	if err != nil {
		ce := microErrors.Parse(err.Error())
		switch ce.Code {
		case 0:
			// assuming it's totally screwed
			ce.Code = 500
			ce.Id = service
			ce.Status = http.StatusText(500)
			ce.Detail = "##error during request: " + ce.Detail
			w.WriteHeader(500)
			log.Infof("[api-srv] ：%v  a", ce.Code)
		default:
			w.WriteHeader(int(ce.Code))
			log.Infof("[api-srv] ：%v b", ce.Code)
		}
        log.Infof("[api-srv] ：%v c", ce.Code)
		w.Write([]byte(ce.Error()))
		return
	} 
	//b, _ := response.MarshalJSON()
	b := []byte{1}
	w.Header().Set("Content-Length", strconv.Itoa(len(b)))
	w.Write(b)
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
    //####监控配置第一步 
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
