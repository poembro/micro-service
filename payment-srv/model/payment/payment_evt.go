package payment

import (
	"context"
	"github.com/google/uuid"
	proto "github.com/poembro/micro-service/payment-srv/proto/payment"
	log "github.com/micro/go-micro/v2/logger"
	"time"
)

// sendPayDoneEvt 发送支付事件
func (s *service) sendPayDoneEvt(orderId int64, state int32) {
	// 构建事件
	ev := &proto.PayEvent{
		Id:       uuid.New().String(),
		SentTime: time.Now().Unix(),
		OrderId:  orderId,
		State:    state,
	}

	log.Infof("[sendPayDoneEvt] 发送支付事件，%+v\n", ev)

	// 广播
	if err := payPublisher.Publish(context.Background(), ev); err != nil {
		log.Infof("[sendPayDoneEvt] 异常: %v", err)
	}
}
