package zap

import "go.uber.org/zap"

// Options 配置项
type Options struct {
	zap.Config
	LogFileDir    string `json:logFileDir` //日志文件存放目录
	AppName       string `json:"appName"`
	ErrorFileName string `json:"errorFileName"`
	WarnFileName  string `json:"warnFileName"`
	InfoFileName  string `json:"infoFileName"`
	DebugFileName string `json:"debugFileName"`
	MaxSize       int    `json:"maxSize"` // megabytes
	MaxBackups    int    `json:"maxBackups"` //最大保存文件数
	MaxAge        int    `json:"maxAge"` // days
}
