package orders

import (
	proto "github.com/poembro/micro-service/orders-srv/proto/orders"
	"github.com/poembro/micro-service/plugins/db"
	log "github.com/micro/go-micro/v2/logger"
)

// GetOrder 获取订单
func (s *service) GetOrder(orderId int64) (order *proto.Order, err error) {
	order = &proto.Order{}

	// 获取数据库
	o := db.GetDB()
	// 查询
	err = o.QueryRow("SELECT id, user_id, book_id, inv_his_id, state FROM orders WHERE id = ?", orderId).Scan(
		&order.Id, &order.UserId, &order.BookId, &order.InvHistoryId, &order.State)
	if err != nil {
		log.Infof("[GetOrder] 查询数据失败，err：%s", err)
		return
	}

	return
}
