yuzne0@qqvipvip.com----application

https://huli.weibot.cn/api/login
Accept: application/json
content-type: application/json
{ "mobile":"15347073240","password":"a984954545"}
响应
{
"code": 0,
"message": "登录成功",
-"data": {
"token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6IjFkOTlkYTM1In0.eyJpc3MiOiJodHRwOlwvXC9odWxpLndlaWJvdC5jblwvYXBpXC9sb2dpbiIsImlhdCI6MTU4Njg0MjA3OCwiZXhwIjoxNTk1NDgyMDc4LCJuYmYiOjE1ODY4NDIwNzgsImp0aSI6IjNKUzFuNGk5R1g2SzhGVW4iLCJzdWIiOiIyMDg3OCIsInBydiI6IjllZmQ5OTk0M2FlNDA3OWJhNTM2Mzc2NjI5OTJlMzFmYjYxNjQ0NzQiLCJhdWQiOiJzTmNaRGtyMGo1SGJyaE9TIiwiYXV0aF90aW1lIjoxNTg2ODQyMDc4LCJ3ZWlfYm9fdWlkIjpudWxsLCJkb3VfeWluX3VpZCI6bnVsbH0.uB2cSrFH7lpoeihO9UJ1z6f9Xgc_4OhzTvMWAHtI-VA",
"token_type": "bearer ",
"expires_in": 8640000
},
"errors": [ ],
"status_code": 200,
"time": 0.20885801315307617
}


https://huli.weibot.cn/api/get-tasks
content-type: application/json;charset=UTF-8
cookie: token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6IjFkOTlkYTM1In0.eyJpc3MiOiJodHRwOlwvXC9odWxpLndlaWJvdC5jblwvYXV0aFwvd2VpYm9cL2NhbGxiYWNrIiwiaWF0IjoxNTg2ODQxMzUxLCJleHAiOjE1OTU0ODEzNTEsIm5iZiI6MTU4Njg0MTM1MSwianRpIjoiM2NTMnUxV0hrT3daZkI0eCIsInN1YiI6IjIwODc4IiwicHJ2IjoiOWVmZDk5OTQzYWU0MDc5YmE1MzYzNzY2Mjk5MmUzMWZiNjE2NDQ3NCIsImF1ZCI6IlAzYndzMjFTdUhMVVFFOHMiLCJhdXRoX3RpbWUiOjE1ODY4NDEzNTEsIndlaV9ib191aWQiOjQ3NTQxLCJkb3VfeWluX3VpZCI6bnVsbH0.zCkJBrgM0SqIgJUBaEqi-a0gn1fYf7CNPMykISP3HRQ; _session=eyJpdiI6IkZHYWlrRG45S1MwTExyeW1UM293V3c9PSIsInZhbHVlIjoiNTBQcm1CeHhQNXBBZjVuRUhnYmhlcGdXSG1FNTl0cTF3OVVrQWRDYjNLOUJta2RxdHlZTVFyWm9RcEoyQnUrbyIsIm1hYyI6IjQzYTlmNGRmNmU4ZWRlZTdkNjc4NmQwNDNhMTlkYjBiNjJjMDkwZTBmMzU3MDVkYjZhN2M4NDA2NDczNmIwODUifQ%3D%3D; selectList={%22new_hand%22:[%221_1_0%22%2C%221_2_0%22%2C%221_2_6%22%2C%221_3_1%22%2C%221_3_3%22%2C%221_3_4%22%2C%221_1_6%22%2C%221_9_0%22%2C%221_5_0%22%2C%221_3_8%22%2C%221_9_9%22]%2C%22creation%22:[]%2C%22content_review%22:[]}; selectTime={%22curTime%22:1586844710823%2C%22wbUid%22:%227388465355%22%2C%22dyUid%22:%22%22}

authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6IjFkOTlkYTM1In0.eyJpc3MiOiJodHRwOlwvXC9odWxpLndlaWJvdC5jblwvYXV0aFwvd2VpYm9cL2NhbGxiYWNrIiwiaWF0IjoxNTg2ODQxMzUxLCJleHAiOjE1OTU0ODEzNTEsIm5iZiI6MTU4Njg0MTM1MSwianRpIjoiM2NTMnUxV0hrT3daZkI0eCIsInN1YiI6IjIwODc4IiwicHJ2IjoiOWVmZDk5OTQzYWU0MDc5YmE1MzYzNzY2Mjk5MmUzMWZiNjE2NDQ3NCIsImF1ZCI6IlAzYndzMjFTdUhMVVFFOHMiLCJhdXRoX3RpbWUiOjE1ODY4NDEzNTEsIndlaV9ib191aWQiOjQ3NTQxLCJkb3VfeWluX3VpZCI6bnVsbH0.zCkJBrgM0SqIgJUBaEqi-a0gn1fYf7CNPMykISP3HRQ
{task_type: "1_1_0-1_2_0-1_2_6-1_3_1-1_3_3-1_3_4-1_1_6-1_9_0-1_5_0-1_3_8-1_9_9"}
{
	"code": 0,
	"message": "领取成功",
	"data": {
		"id": "20200414141223806011004140395000301",
		"task_id": "20200414141210541011000415394000301",
		"user_id": 47541,
		"status": 1,
		"receive_at": "2020-04-14T06:12:23.806620Z",
		"finish_at": null,
		"receive_qty": 1,
		"finish_qty": 0,
		"checked_info": "{}",
		"other_limit_info": "{}",
		"parameters": "{\"url\":\"https:\\\/\\\/m.weibo.cn\\\/status\\\/4493596138501455\",\"uid\":\"7388465355\",\"task_member\":\"25\"}",
		"checked_at": null,
		"checker": null,
		"mid": "4493596138501455",
		"task_type": "1_3_1",
		"check_message": null,
		"settled_status": 1,
		"category_id": "1",
		"order_type": 3,
		"goods_type": 1,
		"user_level": 0,
		"channel_id": 0,
		"channel_settlement_status": 1,
		"group_id": 0,
		"account_id": "20878",
		"amount": "2000",
		"additional_parameters": "{\"content\":\"\看\到\这\款\颜\色\也\是\蛮\漂\亮\的\，\很\喜\欢\",\"comment_type\":\"comment\",\"users\":{\"quality\":20,\"quality_icon\":\"https:\\\/\\\/img.ie0.com\\\/task\\\/images\\\/levels\\\/20.png\",\"quality_label\":\"\垃\圾\号\"},\"parameters\":[{\"label\":\"\链\接\",\"value\":\"https:\\\/\\\/m.weibo.cn\\\/status\\\/4493596138501455\",\"type\":\"url\"}]}",
		"group_addition_price": 0,
		"parent_addition_price": 0,
		"task_content_id": 856182,
		"defined_type": "comment",
		"updated_at": "2020-04-14 14:12:23",
		"created_at": "2020-04-14 14:12:23",
		"task_order_info": {
			"url": "https:\/\/m.weibo.cn\/status\/4493596138501455",
			"task_point": "2000",
			"category_id": 1,
			"order_type": 3,
			"goods_type": 1,
			"user_level": 0,
			"task_type": "1_3_1",
			"task_type_name": "微博评论指定内容",
			"title": "微博评论指定内容",
			"countdown": 3,
			"comment_type": "comment",
			"content": "看到这款颜色也是蛮漂亮的，很喜欢",
			"labels": {
				"category_id": "微博",
				"order_type": "评论",
				"goods_type": "指定内容",
				"user_level": "随机质量"
			},
			"content_label": "评论要求",
			"content_tips": "请评论指定内容"
		},
		"user_task_info": {
			"user_name": "葬芯鎖丶爸",
			"time_out_count": 0,
			"time_out_tips": "超时未完成该任务的次数",
			"point": 28000,
			"order_range": "微博点赞、微博转发、微博转发不屏蔽、微博评论指定内容、微博评论随机图片、微博评论GIF图、微博点赞不屏蔽、微博直发、微博关注、微博评论指定内容带关注、微博直发话题",
			"not_selected": "微博评论、微博评论最少字数"
		},
		"order_status_label": "进行中",
		"category_label": "微博",
		"task_type_label": "微博评论指定内容",
		"labels": {
			"category_id": "微博",
			"order_type": "评论",
			"goods_type": "指定内容",
			"user_level": "随机质量"
		},
		"user": {
			"id": 47541,
			"name": "葬芯鎖丶爸",
			"created_at": "2020-04-14 12:15:37",
			"updated_at": "2020-04-14 13:15:51",
			"avatar": "https:\/\/tvax3.sinaimg.cn\/crop.0.0.100.100.180\/00841fm3ly8gbomh95lhqj302s03pglk.jpg?KID=imgbed,tva&Expires=1586848537&ssig=BKMUFN9LWU",
			"status": 1,
			"level": 1,
			"type": 1,
			"parent_id": 0,
			"wb_uid": "7388465355",
			"login_ip": "117.152.232.246",
			"area": null,
			"device": null,
			"account_id": "20878",
			"third_account_type": 1,
			"notification_count": 0,
			"collection_info": "{\"original_time\":null,\"follow_count\":\"96\",\"fans_count\":\"2\",\"bowen_count\":\"110\",\"nick_name\":\"\葬\芯\鎖\丶\爸\",\"name\":null,\"place\":\"\湖\北\",\"gender\":\"\女\",\"intro\":null,\"registration\":\"2020-02-08\",\"school\":\"<ahref=\\\"\\\/\\\/s.weibo.com\\\/user\\\/&school=å®å¾½å¤§å­¦æ±æ·®å­¦é¢&from=inf&wvr=5&loc=infedu\\\">\安\徽\大\学\江\淮\学\院<\\\/a>(1983\年)<br\\\/>\其\它\院\系\",\"birthday\":\"1994\年6\月11\日\",\"horoscope\":null,\"verified_title\":null,\"verified_type\":null,\"member\":\"0\"}",
			"collection_update_time": "2020-04-14 12:17:21",
			"quality": 20,
			"binding_tag": "",
			"binding_time": 1586837748,
			"qualities": null,
			"parameters": null,
			"photo_url": "https:\/\/www.gravatar.com\/avatar\/d41d8cd98f00b204e9800998ecf8427e.jpg?s=200&d=mm",
			"quality_label": "垃圾号",
			"quality_icon": "https:\/\/img.ie0.com\/task\/images\/levels\/20.png",
			"binding_tag_label": ""
		}
	},
	"errors": [],
	"status_code": 200,
	"time": 1.519806146621704
}






0 origin_data
root[]
for k, v: = range(origin_data[parentId]) { //上一把将parent_id 归类了 这里就是子id
	if origin_data[k] != nil {
		如果是nil 那就是空值 且不是root节点
		v.list = self(k, origin_data)
	}
	root = append(root, v) //root节点就直接写切片
}
return root




1.点击微博登陆
https://huli.weibot.cn//auth/weibo?redirect=http://huli.weibot.cn/login-redirect&recommend_code=

响应302:
location: https://api.weibo.com/oauth2/authorize?client_id=2336750830&redirect_uri=https%3A%2F%2Fhuli.weibot.cn%2Fauth%2Fweibo%2Fcallback&scope=&response_type=code&state=51ZJSEafqcZiC3FTsdDTUncp7onfA810xDBNJsOW

2.跟踪 location地址

3. https://login.sina.com.cn/sso/prelogin.php?entry=openapi&callback=sinaSSOController.preloginCallBack&su=MTMyOTg2MjY5Mzg%3D&rsakt=mod&checkpin=1&client=ssologin.js(v1.4.18)&_=1586871032341

4.输入微博账号：https://login.sina.com.cn/sso/login.php?client=ssologin.js(v1.4.18)&_=1586871068675&openapilogin=qrcode





https://huli.weibot.cn/api/task-orders?page=1&limit=30&status=1
authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6IjFkOTlkYTM1In0.eyJpc3MiOiJodHRwOlwvXC9odWxpLndlaWJvdC5jblwvYXV0aFwvd2VpYm9cL2NhbGxiYWNrIiwiaWF0IjoxNTg2OTM0NDc2LCJleHAiOjIxODY5MzQ0MTYsIm5iZiI6MTU4NjkzNDQ3NiwianRpIjoiVGowRDlHVDAyNTJkNWJRcSIsInN1YiI6IjIzODEyIiwicHJ2IjoiOWVmZDk5OTQzYWU0MDc5YmE1MzYzNzY2Mjk5MmUzMWZiNjE2NDQ3NCIsImF1ZCI6IkRNODdIN1lFQThIQnM2RDUiLCJhdXRoX3RpbWUiOjE1ODY5MzQ0NzYsIndlaV9ib191aWQiOjQ3NzAyLCJkb3VfeWluX3VpZCI6bnVsbH0.AET-6CDdVxzg9fVrYZLFzkTv2BO06v63lHcGZVJyC1I
cookie: token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6IjFkOTlkYTM1In0.eyJpc3MiOiJodHRwOlwvXC9odWxpLndlaWJvdC5jblwvYXV0aFwvd2VpYm9cL2NhbGxiYWNrIiwiaWF0IjoxNTg2OTM0NDc2LCJleHAiOjIxODY5MzQ0MTYsIm5iZiI6MTU4NjkzNDQ3NiwianRpIjoiVGowRDlHVDAyNTJkNWJRcSIsInN1YiI6IjIzODEyIiwicHJ2IjoiOWVmZDk5OTQzYWU0MDc5YmE1MzYzNzY2Mjk5MmUzMWZiNjE2NDQ3NCIsImF1ZCI6IkRNODdIN1lFQThIQnM2RDUiLCJhdXRoX3RpbWUiOjE1ODY5MzQ0NzYsIndlaV9ib191aWQiOjQ3NzAyLCJkb3VfeWluX3VpZCI6bnVsbH0.AET-6CDdVxzg9fVrYZLFzkTv2BO06v63lHcGZVJyC1I; _session=eyJpdiI6ImxMXC82ejJnWml6WGxjRHVZcnZneVVRPT0iLCJ2YWx1ZSI6IlZTZVZva0tjVW0rd25rcGprWGphT0FvSGJncHRkTXBpOXU5ZzB5aVBpTVlqYVlidVIwRHMrcGpQQTNzdGdTc1AiLCJtYWMiOiI4ZDRhMGRmOTgzMTg2NzNiNjQxYWU4NGVmN2U0NmI5OTFlYTRkMTBhMzA4MjUwMjAyZDhmNmMwYWVkNTU5ZmJkIn0%3D

{"code":0,"message":"success","data":{"current_page":1,"data":[{"id":"20200415151055660011000259492200100","task_id":"20200415150955330011000425430200100","user_id":47702,"status":1,"receive_at":"2020-04-15 15:10:55","finish_at":null,"receive_qty":1,"finish_qty":0,"amount":1000,"checked_info":"{}","other_limit_info":"{}","checked_at":null,"checker":null,"check_message":null,"settled_status":1,"created_at":"2020-04-15 15:10:55","updated_at":"2020-04-15 15:10:55","mid":"4493884099034937","error":null,"task_type":1,"account_id":23812,"group_id":0,"additional_parameters":"{\"users\":{\"quality\":20,\"quality_icon\":\"https:\\\/\\\/img.ie0.com\\\/task\\\/images\\\/levels\\\/20.png\",\"quality_label\":\"\\u5783\\u573e\\u53f7\"},\"parameters\":[{\"label\":\"\\u94fe\\u63a5\",\"value\":\"https:\\\/\\\/m.weibo.cn\\\/1404671283\\\/4493884099034937\",\"type\":\"url\"}]}","group_addition_price":0,"parent_addition_price":0,"defined_type":null,"task_content_id":0,"review_time":null,"parameters":"{\"url\":\"https:\\\/\\\/m.weibo.cn\\\/1404671283\\\/4493884099034937\",\"uid\":\"2806354582\",\"task_member\":\"46\"}","category_id":1,"order_type":1,"goods_type":0,"user_level":20,"channel_id":0,"channel_settlement_status":1,"is_time_out":0,"label":"\u5fae\u535a\u70b9\u8d5e","parameters_labels":[{"label":"\u94fe\u63a5","value":"https:\/\/m.weibo.cn\/1404671283\/4493884099034937","type":"url"}],"order_status_label":"\u8fdb\u884c\u4e2d","category_label":"\u5fae\u535a","task_type_label":"\u5fae\u535a\u70b9\u8d5e","labels":{"category_id":"\u5fae\u535a","order_type":"\u70b9\u8d5e","goods_type":"","user_level":"\u5783\u573e\u53f7"},"task":{"id":"20200415150955330011000425430200100","user_id":0,"order_type":1,"goods_type":0,"category_id":"1","title":"\u5fae\u535a\u70b9\u8d5e\u5783\u573e\u53f7","description":"","start_at":"2020-04-15 15:09:55","end_at":"2020-04-22 15:09:55","task_time_limit":"1 hour","check_time_limit":"24 hour","number_limit":3,"user_score_limit":0,"other_limit":"","order_at":"2020-04-15 15:09:55","pay_at":"2020-04-15 15:09:55","complete_at":null,"settled_at":null,"unit":1,"qty":100,"price":"2.0000","order_amount":200,"fee_amount":0,"discount_amount":0,"total_amount":200,"pay_amount":200,"refund_amount":0,"parameters":"{\"url\":\"https:\\\/\\\/m.weibo.cn\\\/1404671283\\\/4493884099034937\"}","step":"[]","check_info":"[]","status":3,"pay_status":2,"settled_status":1,"created_at":"2020-04-15 15:09:55","updated_at":"2020-04-15 15:11:38","error":null,"receive_count":94,"completion_count":0,"mid":"4493884099034937","account_id":10004,"group_id":0,"system_addition_price":0,"group_addition_price":0,"parent_addition_price":0,"task_point":1000,"point_ratio":100000,"price_info":"{\"attr_type_buyer_markup_ratio\":0,\"attr_type_seller_markup_ratio\":0,\"level_type_buyer_markup_ratio\":\"-50.000000\",\"level_type_seller_markup_ratio\":\"-66.666666\",\"attr_type_buyer_markup_price\":0,\"attr_type_seller_markup_price\":0,\"level_type_buyer_markup_price\":\"-0.02000000\",\"level_type_seller_markup_price\":\"-0.02000000\",\"buyer_base_price\":\"0.04000000\",\"seller_base_price\":\"0.03000000\",\"buyer_price\":\"0.020000\",\"seller_price\":\"0.010000\",\"group_addition_price\":0,\"group_addition_percent\":0,\"parent_addition_price\":0,\"parent_addition_percent\":0,\"system_addition_price\":\"0.000000\",\"system_addition_percent\":0,\"task_point\":\"1000\",\"price\":\"2.0000\",\"add_price_info\":[]}","additional_parameters":"{\"parameters\":[{\"label\":\"\\u94fe\\u63a5\",\"value\":\"https:\\\/\\\/m.weibo.cn\\\/1404671283\\\/4493884099034937\",\"type\":\"url\"}],\"task_type_setting\":{\"min\":\"100\",\"max\":\"3000\",\"open_frequently_user_min\":\"500\",\"time\":\"3\",\"has_check\":1,\"has_processing_monitor\":0,\"check_type\":\"1\",\"has_collect\":1,\"real_name_limit\":0,\"is_open_robot\":0}}","quicken_price":"0.0000","is_add":0,"real_finish_qty":0,"defined_type":null,"collection_info":"{\"mid\": \"4493884099034937\", \"content\": \"\\u3010\\u79ef\\u6781\\u6559\\u80b2\\u65e5\\u601d\\u2014\\u5728\\u7ebf\\u805a\\u96c6\\u7684\\u65b9\\u6cd5\\u3011\\u81ea\\u4ece\\u5168\\u4e16\\u754c\\u90fd\\u5f00\\u59cb\\u5728\\u5bb6\\u9694\\u79bb\\u540e\\uff0c\\u5404\\u56fd\\u4eba\\u6c11\\u5f00\\u59cb\\u4e86\\u5404\\u79cd\\u5728\\u7ebf\\u805a\\u96c6\\u7684\\u65b9\\u6cd5\\uff0c\\u6bd4\\u5982\\u8bf4\\u89c6\\u9891\\u4e2d\\u51e0\\u4eba\\u5171\\u5531\\u4e00\\u9996\\u6b4c\\u7684\\u89c6\\u9891\\uff0c\\u8fd8\\u6709\\u6bd4\\u5982\\u6211\\u5c31\\u804c\\u7684\\u82f1\\u56fd\\u516c\\u53f8\\u5728\\u540c\\u4e00\\u65f6\\u95f4\\uff0c\\u5728\\u7535\\u8111\\u5c4f\\u5e55\\u524d\\u5403\\u4e0b\\u5348\\u8336\\u7684\\u6d3b\\u52a8\\u3002\\u4e07\\u80fd\\u7684\\u7f51\\u53cb\\uff0c\\u4f60\\u4eec\\u6709\\u5565\\u521b\\u610f\\u7684\\u805a\\u96c6\\u65b9\\u6cd5\\u5417\\uff1f#\\u5728\\u5bb6\\u5e26\\u5a03\\u5927\\u4f5c\\u6218##\\u5e26\\u5a03\\u5b66\\u4e60\\u8bb0#@\\u5fae\\u535a\\u6559\\u80b2 \\ue627\\u79ef\\u6781\\u6559\\u80b2\\u8d85\\u8bdd L\\u513f\\u7ae5\\u79ef\\u6781\\u6559\\u80b2\\u5021\\u5bfc\\u8005\\u738b\\u73cd\\u7684\\u5fae\\u535a\\u89c6\\u9891 \/\/s.weibo.com\/weibo?q=%23%E5%9C%A8%E5%AE%B6%E5%B8%A6%E5%A8%83%E5%A4%A7%E4%BD%9C%E6%88%98%23&from=default \/\/s.weibo.com\/weibo?q=%23%E5%B8%A6%E5%A8%83%E5%AD%A6%E4%B9%A0%E8%AE%B0%23&from=default http:\/\/weibo.cn\/pages\/1008087255dce4039a3953ca7e78d19cc5fd5c http:\/\/t.cn\/A6wxxP6U\", \"create_time\": \"1586908924000\", \"reposts_count\": \"0\", \"comments_count\": \"0\", \"attitudes_count\": \"1\", \"uid\": \"1404671283\", \"nick_name\": \"\\u513f\\u7ae5\\u79ef\\u6781\\u6559\\u80b2\\u5021\\u5bfc\\u8005\\u738b\\u73cd\", \"image_urls\": [], \"video_urls\": \"\/\/f.video.weibocdn.com\/KUwmQH6Zlx07CprnhWwU01041200ehck0E010.mp4?label=mp4_hd&template=640x360.25.0&trans_finger=62b30a3f061b162e421008955c73f536&media_id=1034:4492493757022243&tp=YTkl0eM8:YTkl0eM8&us=2Svijz&ori=0&ctb=0&ot=h&ps=4pdsh0&ab=540-g1,1326-g1,966-g1,1055-g0,878-g0,1493-g0,1192-g0,1191-g0,1046-g2,1258-g0,1887-g2,495-g0&Expires=1586938197&ssig=CK91A263DU&KID=unistore,video\", \"video_number\": 0, \"type\": \"image\"}","pause_status":0,"user_level":20,"order_status_label":"\u8fdb\u884c\u4e2d","price_label":"0.020000","total_amount_label":2,"pay_amount_label":2,"quicken_price_label":0,"category_label":"\u5fae\u535a"},"user":{"id":47702,"name":"IT\u5927\u8bd7\u5144","created_at":"2020-04-14 15:21:26","updated_at":"2020-04-15 15:07:58","avatar":"https:\/\/tva4.sinaimg.cn\/crop.0.0.996.996.180\/a7459296jw8f4svp354t7j20ro0rpdin.jpg?KID=imgbed,tva&Expires=1586859685&ssig=vVVuiPjOqD","status":1,"level":1,"type":1,"parent_id":0,"wb_uid":"2806354582","login_ip":"117.152.232.246","area":null,"device":null,"account_id":"23812","third_account_type":1,"notification_count":0,"collection_info":"{\"original_time\":\"2015-01-08 23:04\",\"follow_count\":\"108\",\"fans_count\":\"31\",\"bowen_count\":\"69\",\"nick_name\":\"IT\\u5927\\u8bd7\\u5144\",\"name\":null,\"place\":\"\\u6e56\\u5317\\u6b66\\u6c49\",\"gender\":\"\\u7537\",\"intro\":null,\"registration\":\"2012-05-17\",\"school\":null,\"birthday\":\"1992\\u5e747\\u670814\\u65e5\",\"horoscope\":null,\"verified_title\":null,\"verified_type\":null,\"member\":\"0\"}","collection_update_time":"2020-04-15 15:07:58","quality":20,"binding_tag":"","binding_time":1586849131,"qualities":null,"parameters":null,"photo_url":"https:\/\/www.gravatar.com\/avatar\/d41d8cd98f00b204e9800998ecf8427e.jpg?s=200&d=mm","quality_label":"\u5783\u573e\u53f7","quality_icon":"https:\/\/img.ie0.com\/task\/images\/levels\/20.png","binding_tag_label":""}},{"id":"20200415150355517011000271888200308","task_id":"20200415145744148011004958359200308","user_id":47702,"status":1,"receive_at":"2020-04-15 15:03:55","finish_at":null,"receive_qty":1,"finish_qty":0,"amount":7000,"checked_info":"{}","other_limit_info":"{}","checked_at":null,"checker":null,"check_message":null,"settled_status":1,"created_at":"2020-04-15 15:03:55","updated_at":"2020-04-15 15:03:55","mid":"4493662891588455","error":null,"task_type":1,"account_id":23812,"group_id":0,"additional_parameters":"{\"content\":\"\\u4e2d\\u836f\\u6750\\u53ef\\u4ee5\\u8d77\\u5230\\u6291\\u5236\\u75c5\\u6bd2\\u7684\\u4f5c\\u7528\\uff01\",\"comment_type\":\"comment\",\"users\":{\"quality\":20,\"quality_icon\":\"https:\\\/\\\/img.ie0.com\\\/task\\\/images\\\/levels\\\/20.png\",\"quality_label\":\"\\u5783\\u573e\\u53f7\"},\"parameters\":[{\"label\":\"\\u94fe\\u63a5\",\"value\":\"https:\\\/\\\/m.weibo.cn\\\/1752825395\\\/4493662891588455\",\"type\":\"url\"}]}","group_addition_price":0,"parent_addition_price":0,"defined_type":"comment","task_content_id":882612,"review_time":null,"parameters":"{\"url\":\"https:\\\/\\\/m.weibo.cn\\\/1752825395\\\/4493662891588455\",\"uid\":\"2806354582\",\"task_member\":\"60\"}","category_id":1,"order_type":3,"goods_type":8,"user_level":20,"channel_id":0,"channel_settlement_status":1,"is_time_out":0,"label":"\u5fae\u535a\u8bc4\u8bba\u6307\u5b9a\u5185\u5bb9\u5e26\u5173\u6ce8","parameters_labels":[{"label":"\u94fe\u63a5","value":"https:\/\/m.weibo.cn\/1752825395\/4493662891588455","type":"url"}],"order_status_label":"\u8fdb\u884c\u4e2d","category_label":"\u5fae\u535a","task_type_label":"\u5fae\u535a\u8bc4\u8bba\u6307\u5b9a\u5185\u5bb9\u5e26\u5173\u6ce8","labels":{"category_id":"\u5fae\u535a","order_type":"\u8bc4\u8bba","goods_type":"\u6307\u5b9a\u5185\u5bb9\u5e26\u5173\u6ce8","user_level":"\u5783\u573e\u53f7"},"task":{"id":"20200415145744148011004958359200308","user_id":0,"order_type":3,"goods_type":8,"category_id":"1","title":"\u5fae\u535a\u8bc4\u8bba\u6307\u5b9a\u5185\u5bb9\u5e26\u5173\u6ce8\u5783\u573e\u53f7","description":"","start_at":"2020-04-15 14:57:44","end_at":"2020-04-22 14:57:44","task_time_limit":"1 hour","check_time_limit":"24 hour","number_limit":3,"user_score_limit":0,"other_limit":"","order_at":"2020-04-15 14:57:44","pay_at":"2020-04-15 14:57:44","complete_at":null,"settled_at":null,"unit":1,"qty":60,"price":"8.0000","order_amount":480,"fee_amount":0,"discount_amount":0,"total_amount":480,"pay_amount":480,"refund_amount":0,"parameters":"{\"url\":\"https:\\\/\\\/m.weibo.cn\\\/1752825395\\\/4493662891588455\"}","step":"[]","check_info":"[]","status":3,"pay_status":2,"settled_status":1,"created_at":"2020-04-15 14:57:44","updated_at":"2020-04-15 15:09:03","error":null,"receive_count":60,"completion_count":35,"mid":"4493662891588455","account_id":21349,"group_id":0,"system_addition_price":0,"group_addition_price":0,"parent_addition_price":0,"task_point":7000,"point_ratio":100000,"price_info":"{\"attr_type_buyer_markup_ratio\":\"166.666666\",\"attr_type_seller_markup_ratio\":\"200.000000\",\"level_type_buyer_markup_ratio\":\"-133.333333\",\"level_type_seller_markup_ratio\":\"-160.000000\",\"attr_type_buyer_markup_price\":\"0.10000000\",\"attr_type_seller_markup_price\":\"0.10000000\",\"level_type_buyer_markup_price\":\"-0.08000000\",\"level_type_seller_markup_price\":\"-0.08000000\",\"buyer_base_price\":\"0.06000000\",\"seller_base_price\":\"0.05000000\",\"buyer_price\":\"0.080000\",\"seller_price\":\"0.070000\",\"group_addition_price\":0,\"group_addition_percent\":0,\"parent_addition_price\":0,\"parent_addition_percent\":0,\"system_addition_price\":\"0.000000\",\"system_addition_percent\":0,\"task_point\":\"7000\",\"price\":\"8.0000\",\"add_price_info\":[]}","additional_parameters":"{\"parameters\":[{\"label\":\"\\u94fe\\u63a5\",\"value\":\"https:\\\/\\\/m.weibo.cn\\\/1752825395\\\/4493662891588455\",\"type\":\"url\"}],\"task_type_setting\":{\"min\":\"1\",\"max\":\"3000\",\"open_frequently_user_min\":\"100\",\"time\":\"3\",\"has_check\":1,\"has_processing_monitor\":0,\"check_type\":\"1\",\"has_collect\":1,\"real_name_limit\":0,\"is_open_robot\":0}}","quicken_price":"0.0000","is_add":0,"real_finish_qty":0,"defined_type":"comment","collection_info":"{\"mid\": \"4493662891588455\", \"content\": \"\\u4e3a\\u4f55\\u3010\\u69df\\u6994\\u3011\\u3001\\u3010\\u8349\\u679c\\u3011\\u3001\\u3010\\u9ec4\\u82a9\\u3011\\u7b49\\u4e2d\\u8349\\u836f\\u5728\\u4e13\\u5bb6\\u53e3\\u4e2d\\u5c61\\u88ab\\u63d0\\u53ca\\uff1f\\u4e2d\\u592e\\u6307\\u5bfc\\u7ec4\\u4e13\\u5bb6\\u5218\\u6e05\\u6cc9\\u89e3\\u91ca\\uff1a\\u65b0\\u51a0\\u80ba\\u708e\\u4e3a\\u6e7f\\u75ab\\uff0c\\u53bb\\u6e7f\\u662f\\u4e2d\\u533b\\u6cbb\\u7597\\u7684\\u6838\\u5fc3\\u65b9\\u6cd5\\u4e4b\\u4e00\\uff0c\\u56e0\\u6b64\\u9009\\u7528\\u4e86\\u5f88\\u591a\\u900f\\u6e7f\\u5316\\u90aa\\u7684\\u6838\\u5fc3\\u836f\\u6750\\u3002\", \"create_time\": \"1586856184000\", \"reposts_count\": \"8\", \"comments_count\": \"1\", \"attitudes_count\": \"31\", \"uid\": \"1752825395\", \"nick_name\": \"\\u5149\\u660e\\u7f51\", \"image_urls\": [], \"video_urls\": \"\/\/f.video.weibocdn.com\/KUDWXaQNlx07CpNxLyRO01041200UVFL0E010.mp4?label=mp4_720p&template=1280x720.25.0&trans_finger=11ccc9c970f47cffd9369c72510b3033&media_id=1034:4492573767565353&tp=YTkl0eM8:YTkl0eM8&us=2Svijz&ori=0&ctb=0&ot=h&ps=4pdsh0&ab=540-g1,1326-g1,966-g1,1055-g0,878-g0,1410-g5,495-g2,1493-g0,1192-g0,1191-g0,1046-g2,1258-g0,1887-g2&Expires=1586937467&ssig=qrCSKBT82S&KID=unistore,video\", \"video_number\": 0, \"forwarded\": {\"mid\": \"4492575618881988\", \"content\": \"\\u3010#\\u4e2d\\u533b\\u6cbb\\u7597\\u65b0\\u51a0\\u80ba\\u708e\\u76843\\u79cd\\u6838\\u5fc3\\u65b9\\u6cd5#\\u3011\\u4e2d\\u592e\\u6307\\u5bfc\\u7ec4\\u4e13\\u5bb6\\u3001\\u5317\\u4eac\\u4e2d\\u533b\\u533b\\u9662\\u9662\\u957f\\u5218\\u6e05\\u6cc9\\u8868\\u793a\\uff0c\\u53e4\\u4eba\\u7684\\u65b9\\u5b50\\u662f\\u4ee3\\u8868\\u65b9\\uff0c\\u4e09\\u836f\\u4e09\\u65b9\\u662f\\u4f9d\\u7167\\u53e4\\u4eba\\u540d\\u65b9\\u53d8\\u5316\\u800c\\u6765\\u3002\\u4e2d\\u533b\\u9488\\u5bf9\\u65b0\\u51a0\\u80ba\\u708e\\u8f7b\\u75c7\\u60a3\\u8005\\u76843\\u79cd\\u6838\\u5fc3\\u6cbb\\u7597\\u65b9\\u6cd5\\uff1a\\u5316\\u6e7f\\u3001\\u89e3\\u6bd2\\u3001\\u6e05\\u70ed\\u6d3b\\u8840\\u517b\\u9634\\uff0c\\u69df\\u6994\\u3001\\u8349\\u679c\\u7b49\\u4e2d\\u836f\\u6750\\u900f\\u90aa\\u5316\\u6e7f\\u4f5c\\u7528\\u663e\\u8457\\u3002\\u6d77\\u5916\\u53ef\\u4ee5\\u9009\\u62e9\\u4e2d\\u6210\\u836f\\uff0c\\u6216\\u7528\\u73b0\\u6709\\u7684\\u836f\\u7269\\u6839\\u636e\\u8fd93\\u79cd \\u200b\\u200b\\u200b\\u200b...\\u5c55\\u5f00\\u5168\\u6587c\", \"create_time\": \"1586596958000\", \"reposts_count\": \"5776\", \"comments_count\": \"0\", \"attitudes_count\": \"1947\", \"uid\": \"renminwang\", \"nick_name\": \"\\u4eba\\u6c11\\u7f51\", \"image_urls\": [], \"video_urls\": \"\/\/f.video.weibocdn.com\/KUDWXaQNlx07CpNxLyRO01041200UVFL0E010.mp4?label=mp4_720p&template=1280x720.25.0&trans_finger=11ccc9c970f47cffd9369c72510b3033&media_id=1034:4492573767565353&tp=YTkl0eM8:YTkl0eM8&us=2Svijz&ori=0&ctb=0&ot=h&ps=4pdsh0&ab=540-g1,1326-g1,966-g1,1055-g0,878-g0,1410-g5,495-g2,1493-g0,1192-g0,1191-g0,1046-g2,1258-g0,1887-g2&Expires=1586937467&ssig=qrCSKBT82S&KID=unistore,video\", \"video_number\": 0, \"type\": \"video\"}, \"type\": \"video\"}","pause_status":0,"user_level":20,"order_status_label":"\u8fdb\u884c\u4e2d","price_label":"0.080000","total_amount_label":4.8,"pay_amount_label":4.8,"quicken_price_label":0,"category_label":"\u5fae\u535a"},"user":{"id":47702,"name":"IT\u5927\u8bd7\u5144","created_at":"2020-04-14 15:21:26","updated_at":"2020-04-15 15:07:58","avatar":"https:\/\/tva4.sinaimg.cn\/crop.0.0.996.996.180\/a7459296jw8f4svp354t7j20ro0rpdin.jpg?KID=imgbed,tva&Expires=1586859685&ssig=vVVuiPjOqD","status":1,"level":1,"type":1,"parent_id":0,"wb_uid":"2806354582","login_ip":"117.152.232.246","area":null,"device":null,"account_id":"23812","third_account_type":1,"notification_count":0,"collection_info":"{\"original_time\":\"2015-01-08 23:04\",\"follow_count\":\"108\",\"fans_count\":\"31\",\"bowen_count\":\"69\",\"nick_name\":\"IT\\u5927\\u8bd7\\u5144\",\"name\":null,\"place\":\"\\u6e56\\u5317\\u6b66\\u6c49\",\"gender\":\"\\u7537\",\"intro\":null,\"registration\":\"2012-05-17\",\"school\":null,\"birthday\":\"1992\\u5e747\\u670814\\u65e5\",\"horoscope\":null,\"verified_title\":null,\"verified_type\":null,\"member\":\"0\"}","collection_update_time":"2020-04-15 15:07:58","quality":20,"binding_tag":"","binding_time":1586849131,"qualities":null,"parameters":null,"photo_url":"https:\/\/www.gravatar.com\/avatar\/d41d8cd98f00b204e9800998ecf8427e.jpg?s=200&d=mm","quality_label":"\u5783\u573e\u53f7","quality_icon":"https:\/\/img.ie0.com\/task\/images\/levels\/20.png","binding_tag_label":""}},{"id":"20200415150317008011000244568200308","task_id":"20200415150254399011004945811200308","user_id":47702,"status":1,"receive_at":"2020-04-15 15:03:17","finish_at":null,"receive_qty":1,"finish_qty":0,"amount":7000,"checked_info":"{}","other_limit_info":"{}","checked_at":null,"checker":null,"check_message":null,"settled_status":1,"created_at":"2020-04-15 15:03:17","updated_at":"2020-04-15 15:03:17","mid":"4493725504206425","error":null,"task_type":1,"account_id":23812,"group_id":0,"additional_parameters":"{\"content\":\"\\u770b\\u6765\\u4e2d\\u836f\\u6750\\u5728\\u6b64\\u6b21\\u75ab\\u60c5\\u8fd8\\u662f\\u53d1\\u6325\\u4e86\\u91cd\\u5927\\u7684\\u4f5c\\u7528\\u3002\",\"comment_type\":\"comment\",\"users\":{\"quality\":20,\"quality_icon\":\"https:\\\/\\\/img.ie0.com\\\/task\\\/images\\\/levels\\\/20.png\",\"quality_label\":\"\\u5783\\u573e\\u53f7\"},\"parameters\":[{\"label\":\"\\u94fe\\u63a5\",\"value\":\"https:\\\/\\\/m.weibo.cn\\\/status\\\/4493725504206425\",\"type\":\"url\"}]}","group_addition_price":0,"parent_addition_price":0,"defined_type":"comment","task_content_id":882791,"review_time":null,"parameters":"{\"url\":\"https:\\\/\\\/m.weibo.cn\\\/status\\\/4493725504206425\",\"uid\":\"2806354582\",\"task_member\":\"9\"}","category_id":1,"order_type":3,"goods_type":8,"user_level":20,"channel_id":0,"channel_settlement_status":1,"is_time_out":0,"label":"\u5fae\u535a\u8bc4\u8bba\u6307\u5b9a\u5185\u5bb9\u5e26\u5173\u6ce8","parameters_labels":[{"label":"\u94fe\u63a5","value":"https:\/\/m.weibo.cn\/status\/4493725504206425","type":"url"}],"order_status_label":"\u8fdb\u884c\u4e2d","category_label":"\u5fae\u535a","task_type_label":"\u5fae\u535a\u8bc4\u8bba\u6307\u5b9a\u5185\u5bb9\u5e26\u5173\u6ce8","labels":{"category_id":"\u5fae\u535a","order_type":"\u8bc4\u8bba","goods_type":"\u6307\u5b9a\u5185\u5bb9\u5e26\u5173\u6ce8","user_level":"\u5783\u573e\u53f7"},"task":{"id":"20200415150254399011004945811200308","user_id":0,"order_type":3,"goods_type":8,"category_id":"1","title":"\u5fae\u535a\u8bc4\u8bba\u6307\u5b9a\u5185\u5bb9\u5e26\u5173\u6ce8\u5783\u573e\u53f7","description":"","start_at":"2020-04-15 15:02:54","end_at":"2020-04-22 15:02:54","task_time_limit":"1 hour","check_time_limit":"24 hour","number_limit":3,"user_score_limit":0,"other_limit":"","order_at":"2020-04-15 15:02:54","pay_at":"2020-04-15 15:02:54","complete_at":null,"settled_at":null,"unit":1,"qty":30,"price":"8.0000","order_amount":240,"fee_amount":0,"discount_amount":0,"total_amount":240,"pay_amount":240,"refund_amount":0,"parameters":"{\"url\":\"https:\\\/\\\/m.weibo.cn\\\/status\\\/4493725504206425\"}","step":"[]","check_info":"[]","status":3,"pay_status":2,"settled_status":1,"created_at":"2020-04-15 15:02:54","updated_at":"2020-04-15 15:11:41","error":null,"receive_count":28,"completion_count":0,"mid":"4493725504206425","account_id":21349,"group_id":0,"system_addition_price":0,"group_addition_price":0,"parent_addition_price":0,"task_point":7000,"point_ratio":100000,"price_info":"{\"attr_type_buyer_markup_ratio\":\"166.666666\",\"attr_type_seller_markup_ratio\":\"200.000000\",\"level_type_buyer_markup_ratio\":\"-133.333333\",\"level_type_seller_markup_ratio\":\"-160.000000\",\"attr_type_buyer_markup_price\":\"0.10000000\",\"attr_type_seller_markup_price\":\"0.10000000\",\"level_type_buyer_markup_price\":\"-0.08000000\",\"level_type_seller_markup_price\":\"-0.08000000\",\"buyer_base_price\":\"0.06000000\",\"seller_base_price\":\"0.05000000\",\"buyer_price\":\"0.080000\",\"seller_price\":\"0.070000\",\"group_addition_price\":0,\"group_addition_percent\":0,\"parent_addition_price\":0,\"parent_addition_percent\":0,\"system_addition_price\":\"0.000000\",\"system_addition_percent\":0,\"task_point\":\"7000\",\"price\":\"8.0000\",\"add_price_info\":[]}","additional_parameters":"{\"parameters\":[{\"label\":\"\\u94fe\\u63a5\",\"value\":\"https:\\\/\\\/m.weibo.cn\\\/status\\\/4493725504206425\",\"type\":\"url\"}],\"task_type_setting\":{\"min\":\"1\",\"max\":\"3000\",\"open_frequently_user_min\":\"100\",\"time\":\"3\",\"has_check\":1,\"has_processing_monitor\":0,\"check_type\":\"1\",\"has_collect\":1,\"real_name_limit\":0,\"is_open_robot\":0}}","quicken_price":"0.0000","is_add":0,"real_finish_qty":0,"defined_type":"comment","collection_info":"{\"mid\": \"4493725504206425\", \"content\": \"\\u201c\\u8349\\u679c\\u201d\\u201c\\u85ff\\u9999\\u201d\\u201c\\u69df\\u6994\\u201d\\u7b49\\u4f20\\u7edf\\u4e2d\\u533b\\u836f\\u6750\\u5982\\u4f55\\u53d1\\u6325\\u6297\\u75ab\\u5b9e\\u529b\\uff1f\\u542c\\u4e2d\\u592e\\u6307\\u5bfc\\u7ec4\\u4e13\\u5bb6\\u3001\\u5317\\u4eac\\u4e2d\\u533b\\u533b\\u9662\\u9662\\u957f\\u5218\\u6e05\\u6cc9\\u4e3a\\u4f60\\u8bb2\\u89e3\\u4e2d\\u533b\\u836f\\u6297\\u75ab\\u667a\\u6167\\u3002\", \"create_time\": \"1586871112000\", \"reposts_count\": \"71\", \"comments_count\": \"3\", \"attitudes_count\": \"167\", \"uid\": \"2827102952\", \"nick_name\": \"\\u6e56\\u5317\\u65e5\\u62a5\", \"image_urls\": [], \"video_urls\": \"\/\/f.video.weibocdn.com\/KUDWXaQNlx07CpNxLyRO01041200UVFL0E010.mp4?label=mp4_720p&template=1280x720.25.0&trans_finger=11ccc9c970f47cffd9369c72510b3033&media_id=1034:4492573767565353&tp=YTkl0eM8:YTkl0eM8&us=2Svijz&ori=0&ctb=0&ot=h&ps=4pdsh0&ab=540-g1,1326-g1,966-g1,1055-g0,878-g0,1410-g5,495-g2,1493-g0,1192-g0,1191-g0,1046-g2,1258-g0,1887-g2&Expires=1586937775&ssig=7WmG9d2qzh&KID=unistore,video\", \"video_number\": 0, \"forwarded\": {\"mid\": \"4492575618881988\", \"content\": \"\\u3010#\\u4e2d\\u533b\\u6cbb\\u7597\\u65b0\\u51a0\\u80ba\\u708e\\u76843\\u79cd\\u6838\\u5fc3\\u65b9\\u6cd5#\\u3011\\u4e2d\\u592e\\u6307\\u5bfc\\u7ec4\\u4e13\\u5bb6\\u3001\\u5317\\u4eac\\u4e2d\\u533b\\u533b\\u9662\\u9662\\u957f\\u5218\\u6e05\\u6cc9\\u8868\\u793a\\uff0c\\u53e4\\u4eba\\u7684\\u65b9\\u5b50\\u662f\\u4ee3\\u8868\\u65b9\\uff0c\\u4e09\\u836f\\u4e09\\u65b9\\u662f\\u4f9d\\u7167\\u53e4\\u4eba\\u540d\\u65b9\\u53d8\\u5316\\u800c\\u6765\\u3002\\u4e2d\\u533b\\u9488\\u5bf9\\u65b0\\u51a0\\u80ba\\u708e\\u8f7b\\u75c7\\u60a3\\u8005\\u76843\\u79cd\\u6838\\u5fc3\\u6cbb\\u7597\\u65b9\\u6cd5\\uff1a\\u5316\\u6e7f\\u3001\\u89e3\\u6bd2\\u3001\\u6e05\\u70ed\\u6d3b\\u8840\\u517b\\u9634\\uff0c\\u69df\\u6994\\u3001\\u8349\\u679c\\u7b49\\u4e2d\\u836f\\u6750\\u900f\\u90aa\\u5316\\u6e7f\\u4f5c\\u7528\\u663e\\u8457\\u3002\\u6d77\\u5916\\u53ef\\u4ee5\\u9009\\u62e9\\u4e2d\\u6210\\u836f\\uff0c\\u6216\\u7528\\u73b0\\u6709\\u7684\\u836f\\u7269\\u6839\\u636e\\u8fd93\\u79cd \\u200b\\u200b\\u200b\\u200b...\\u5c55\\u5f00\\u5168\\u6587c\", \"create_time\": \"1586596958000\", \"reposts_count\": \"5781\", \"comments_count\": \"0\", \"attitudes_count\": \"1949\", \"uid\": \"renminwang\", \"nick_name\": \"\\u4eba\\u6c11\\u7f51\", \"image_urls\": [], \"video_urls\": \"\/\/f.video.weibocdn.com\/KUDWXaQNlx07CpNxLyRO01041200UVFL0E010.mp4?label=mp4_720p&template=1280x720.25.0&trans_finger=11ccc9c970f47cffd9369c72510b3033&media_id=1034:4492573767565353&tp=YTkl0eM8:YTkl0eM8&us=2Svijz&ori=0&ctb=0&ot=h&ps=4pdsh0&ab=540-g1,1326-g1,966-g1,1055-g0,878-g0,1410-g5,495-g2,1493-g0,1192-g0,1191-g0,1046-g2,1258-g0,1887-g2&Expires=1586937775&ssig=7WmG9d2qzh&KID=unistore,video\", \"video_number\": 0, \"type\": \"video\"}, \"type\": \"video\"}","pause_status":0,"user_level":20,"order_status_label":"\u8fdb\u884c\u4e2d","price_label":"0.080000","total_amount_label":2.4,"pay_amount_label":2.4,"quicken_price_label":0,"category_label":"\u5fae\u535a"},"user":{"id":47702,"name":"IT\u5927\u8bd7\u5144","created_at":"2020-04-14 15:21:26","updated_at":"2020-04-15 15:07:58","avatar":"https:\/\/tva4.sinaimg.cn\/crop.0.0.996.996.180\/a7459296jw8f4svp354t7j20ro0rpdin.jpg?KID=imgbed,tva&Expires=1586859685&ssig=vVVuiPjOqD","status":1,"level":1,"type":1,"parent_id":0,"wb_uid":"2806354582","login_ip":"117.152.232.246","area":null,"device":null,"account_id":"23812","third_account_type":1,"notification_count":0,"collection_info":"{\"original_time\":\"2015-01-08 23:04\",\"follow_count\":\"108\",\"fans_count\":\"31\",\"bowen_count\":\"69\",\"nick_name\":\"IT\\u5927\\u8bd7\\u5144\",\"name\":null,\"place\":\"\\u6e56\\u5317\\u6b66\\u6c49\",\"gender\":\"\\u7537\",\"intro\":null,\"registration\":\"2012-05-17\",\"school\":null,\"birthday\":\"1992\\u5e747\\u670814\\u65e5\",\"horoscope\":null,\"verified_title\":null,\"verified_type\":null,\"member\":\"0\"}","collection_update_time":"2020-04-15 15:07:58","quality":20,"binding_tag":"","binding_time":1586849131,"qualities":null,"parameters":null,"photo_url":"https:\/\/www.gravatar.com\/avatar\/d41d8cd98f00b204e9800998ecf8427e.jpg?s=200&d=mm","quality_label":"\u5783\u573e\u53f7","quality_icon":"https:\/\/img.ie0.com\/task\/images\/levels\/20.png","binding_tag_label":""}}],"first_page_url":"http:\/\/huli.weibot.cn\/api\/task-orders?page=1","from":1,"last_page":1,"last_page_url":"http:\/\/huli.weibot.cn\/api\/task-orders?page=1","next_page_url":null,"path":"http:\/\/huli.weibot.cn\/api\/task-orders","per_page":10,"prev_page_url":null,"to":3,"total":3},"errors":[],"status_code":200,"time":0.40235090255737305}


