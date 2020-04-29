package user

import (
	"github.com/poembro/micro-service/plugins/db"
	proto "github.com/poembro/micro-service/user-srv/proto/user"
	//log "github.com/micro/go-micro/v2/logger"
	log "github.com/micro/go-micro/v2/logger"
)

func (s *service) QueryUserByName(userName string) (ret *proto.User, err error) {
	queryString := `SELECT user_id, user_name, pwd FROM user WHERE user_name = ?`

	// 获取数据库
	o := db.GetDB()

	ret = &proto.User{}

	// 查询
	err = o.QueryRow(queryString, userName).Scan(&ret.Id, &ret.Name, &ret.Pwd)
	if err != nil {
		log.Infof("[QueryUserByName] 查询数据失败，sql:%s param: %s err：%s", queryString, userName, err)
		return
	}
	return
}
