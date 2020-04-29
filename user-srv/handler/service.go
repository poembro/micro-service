package handler

import (
	"context"
	//log "github.com/micro/go-micro/v2/logger"
	log "github.com/micro/go-micro/v2/logger"
	modelUser "github.com/poembro/micro-service/user-srv/model/user"
	s "github.com/poembro/micro-service/user-srv/proto/user"
)

type Service struct{}

var (
	userService modelUser.Service
)

// Init 初始化handler
func Init() { 
	var err error
	userService, err = modelUser.GetService()
	if err != nil {
		log.Fatal("[Init] 初始化Handler错误")
		return
	}
}

// QueryUserByName 通过参数中的名字返回用户
func (e *Service) QueryUserByName(ctx context.Context, req *s.Request, rsp *s.Response) error {
	log.Infof("[api-srv] ：%+v   %s" , req, req.UserName)
	user, err := userService.QueryUserByName(req.UserName)
	log.Infof("[api-srv] ：%+v", user)
	if err != nil {
		rsp.Error = &s.Error{
			Code:   500,
			Detail: err.Error(),
		}

		return nil
	}

	rsp.User = user
	return nil
}
