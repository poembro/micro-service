package config

import (
	"fmt"
	"sync" 
	"github.com/micro/go-micro/config"
	"github.com/micro/go-micro/util/log"
)

var (
	m      sync.RWMutex
	inited bool

	// 默认配置器
	c = &cnf{}
)

// Configurator 配置器
type Configurator interface {
	App(name string, config interface{}) (err error)
	Path(path string, config interface{}) (err error)
}

// c 配置器
func C() Configurator {
	return c
}

// cnf 配置器
type cnf struct {
	conf    config.Config
	appName string
}

func (c *cnf) App(name string, config interface{}) (err error) { 
	v := c.conf.Get(name)
	if v != nil {
		err = v.Scan(config)
	} else {
		err = fmt.Errorf("[App] 配置不存在，err：%s", name)
	}

	return
}

func (c *cnf) Path(path string, config interface{}) (err error) {
	v := c.conf.Get(c.appName, path)
	if v != nil {
		err = v.Scan(config)
	} else {
		err = fmt.Errorf("[Path] 配置不存在，err：%s", path)
	}

	return
}

//####监控配置第五步 
func (c *cnf) init(ops Options) (err error) {
	m.Lock()
	defer m.Unlock()

	if inited {
		log.Logf("[init] 配置已经初始化过")
		return
	}

	c.conf = config.NewConfig() //框架自带
	c.appName = ops.AppName

	// 加载配置
	err = c.conf.Load(ops.Sources...)
	if err != nil {
		log.Fatal(err)
	}

	go func() {
		log.Logf("[init] 侦听配置变动 ...  %s", ops.AppName ) //每个应用basic.Init(进来的值)

		// 开始侦听变动事件
		watcher, err := c.conf.Watch()
		if err != nil {
			log.Fatal(err)
		}

		for {
			v, err := watcher.Next()
			if err != nil {
				log.Fatal(err)
			}

			log.Logf("[init] 侦听配置变动: %v", string(v.Bytes()))
		}
	}()

	// 标记已经初始化
	inited = true
	return
}


//####监控配置第四步 
// Init 初始化配置
func Init(opts ...Option) {

	ops := Options{}
	for _, o := range opts {
		o(&ops)
	}

	c = &cnf{}

	c.init(ops)
}
