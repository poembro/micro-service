## go-micro是什么？(库) micro是什么(运行时工具集)

go-micro 提供三种服务
1. srv 内部RPC服务 
2. 对外API服务
3. 对外HTTP服务 

-------------------------------------------------------------

 ## micro 工具
 1.查看当前注册了多少服务
[root@192 micro-service]# micro --registry=etcd --registry_address 192.168.3.222:2379 list services
go.micro.http.broker
mu.micro.book.srv.auth
mu.micro.book.srv.user
mu.micro.book.web.user

2.设置网关(比如只写了rpc服务代码，不想写http部分)


3.获取某服务原信息
[root@192 micro-service]# micro --registry=etcd --registry_address 192.168.3.222:2379 get service mu.micro.book.srv.user
service  mu.micro.book.srv.user

version latest

ID	Address	Metadata
mu.micro.book.srv.user-eff9e5c2-a141-4110-9b78-fea0cf0d7643	192.168.3.222:35765	broker=http,protocol=mucp,registry=etcd,server=mucp,transport=http

Endpoint: User.QueryUserByName

Request: {
	user_id string
	user_name string
	user_pwd string
}

Response: {
	success bool
	error Error {
		code int32
		detail string
	}
	user User {
		id int64
		name string
		pwd string
		created_time uint64
		updated_time uint64
	}
}

4.调用



-------------------------------------------------------------


## go micro安装
## 安装go-micro
go get github.com/micro/go-micro/v2
go get github.com/micro/protoc-gen-micro
go get -u github.com/golang/protobuf/protoc-gen-go

## 安装micro
go get github.com/micro/micro/v2

## 生成代码
cd /data/web/main/golang/src/github.com/poembro/micro-service
micro new --namespace=mu.micro.book --type=service --alias=user user-service

## 生成micro.pb
--micro_out: protoc-gen-micro: 系统找不到指定的文件
-- https://blog.csdn.net/zoeou/article/details/86739528




micro new --namespace=mu.micro.book --type=web --alias=user user-web






$ micro --registry=etcd --api_namespace=mu.micro.book.web  api --handler=web

micro api默认把go.micro.api作为API网关服务的命名空间，micro api遵从API网关模式

micro Web服务由micro web提供，默认命名空间是go.micro.web。我们坚信，web应用作为微服务中的一等公民，所以把构建web管理控制台作为微服务的一部分显得非常重要。micro web其实是一个反向代理，并把http请求基于路径解析到适当的web应用程序。



4.2 micro api
{
API参考了API网关模式为服务提供了一个单一的公共入口。基于服务发现，使得micro api可以提供具备 http 及动态路由的服务。
Micro的API基于HTTP协议。请求的API接口通过HTTP协议访问，并且路由是基于服务发现机制向下转发的。 Micro API在 go-micro之上开发，所以它集成了服务发现、负载均衡、编码及基于RPC的通信。

因为micro api内部使用了go-micro，所以它自身也是可插拔的。 参考go-plugins了解对gRPC、kubernetes、etcd、nats、及rabbitmq等支持。另外，api也使用了go-api，这样，接口handler也是可以配置的。

# 默认的端口是8080
micro api
ACME（ Automatic Certificate Management Environment）是由Let’s Encrypt制定的安全协议。
MICRO_ENABLE_ACME=true micro api

可以选择是否配置白名单
MICRO_ENABLE_ACME=true \
MICRO_ACME_HOSTS=example.com,api.example.com \
micro api

API服务支持TLS证书
MICRO_ENABLE_TLS=true \
MICRO_TLS_CERT_FILE=/path/to/cert \
MICRO_TLS_KEY_FILE=/path/to/key \
micro api

设置命名空间
MICRO_NAMESPACE=com.example.api micro api

运行示例
先决条件：我们使用Consul作为默认的服务发现，所以请先确定它已经安装好了，并且已经运行，比如执行consul agent -dev这样子方式运行。
# 下载示例
git clone https://github.com/micro/examples

# 运行服务
go run examples/greeter/srv/main.go

# 运行api
go run examples/greeter/api/api.go

# 启动micro api
micro api

向micro api发起http请求
curl "http://localhost:8080/greeter/say/hello?name=John"

HTTP请求的路径/greeter/say/hello会被路由到服务go.micro.api.greeter的方法Say.Hello上。

绕开api服务并且直接通过rpc调用：


curl -d 'service=go.micro.srv.greeter' \
     -d 'method=Say.Hello' \
     -d 'request={"name": "John"}' \
     http://localhost:8080/rpc
	 
使用JSON的方式执行同一请求：
curl -H 'Content-Type: application/json' \
     -d '{"service": "go.micro.srv.greeter", "method": "Say.Hello", "request": {"name": "John"}}' \
     http://localhost:8080/rpc


micro api提供下面类型的http api接口
- /[service]/[method]   # HTTP路径式的会被动态地定位到服务上
- /rpc          # 显式使用后台服务与方法名直接调用


}


4.3 go-api
https://github.com/asim/go-api
Go API是micro api的基础。这里只是说明一下，该存储库已由所有者归档。 现在它是只读的，我们也不做介绍了。

 


3.4.容错
{
如果是命令行的方式，则可以方便使用内置的flag设置ttl值、间隔时间
micro --register_ttl=30 --register_interval=15 api

刚这个例子我们设置了30秒的TTL生存期，并设置了每15秒一次的重注册。
而对于使用go-micro机制，可以以在构造服务时把选项传进去，比如time.Duration*n
service := micro.NewService(
        micro.Name("com.example.srv.foo"),
        micro.RegisterTTL(time.Second*30),
        micro.RegisterInterval(time.Second*15),
)

负载均衡
微服务客户端通过选择器负载均衡，选择器可以把请求分到任意多的服务节点上。服务启动后，它使用唯一的地址与id组合向注册中心注册成服务节点。创建请求时，micro客户端会通过选择器决定向哪一个节点发送请求。选择器在服务注册信息中找到服务的节点，然后用负载均衡策略选择一个节点把请求发送出去，比如随机哈希、轮询。

使用方式
客户端负载均衡内置在go-micro客户端中，这是自动完成的。
重置可以通过命令行标记或代码选项在客户端传入。默认值是1，也即是一次请求尝试一回。

通过命令行flag传入
micro --client_retries=3
设置选项
client.Init(
    client.Retries(3),
)

服务发现缓存
服务发现是微服务的核心，但是如果架构设计不对，它也会变成故障节点。
服务发现缓存是指在客户端缓存服务发现的信息。
micro --selector=cache api
如果要调用Init方法，Go-micro服务也支持使用同样的命令行flag来传递该参数：
import (
    "github.com/micro/go-micro/client"
    "github.com/micro/go-micro/selector/cache"
)

service := micro.NewService(
    micro.Name("com.example.srv.foo"),
)

service.Client().Init(cache.NewSelector())

}
 




ScreenRecorder  录屏工具

moshopserver

nideshop-mini-program

xiaoyibo

zzjx