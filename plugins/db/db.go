package db

import (
	"database/sql"
	"fmt"
	"sync"

	"github.com/poembro/micro-service/basic"
	//log "github.com/micro/go-micro/v2/logger"
	log "github.com/micro/go-micro/v2/logger"
)

var (
	inited  bool
	mysqlDB *sql.DB
	m       sync.RWMutex
)

func init() {
	basic.Register(initDB)
}

// initDB 初始化数据库
func initDB() {
	m.Lock()
	defer m.Unlock()

	var err error

	if inited {
		err = fmt.Errorf("[initDB] db 已经初始化过")
		log.Infof(err.Error())
		return
	}

	initMysql()

	inited = true
}

// GetDB 获取db
func GetDB() *sql.DB {
	return mysqlDB
}
