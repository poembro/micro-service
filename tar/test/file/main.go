package main

import (
	"fmt"
	"os"
	"io"
)

func main() {
	/*
	os.O_WRONLY 只写
	os.O_CREATE 创建文件
	os.O_RDONLY 只读
	os.O_RDWR   读写
	os.O_TRUNC  清空
	os.O_APPEND 追加 
	*/
	fd, err := os.Open("D:\\log.txt")
    if err != nil {
		fmt.Println("open file failed, err:", err) 
		return 
	}

	defer fd.Close()

	buf := make([]byte, 10)
    for {
		_, err := fd.Read(buf) //读取最多len(buf)字节数据并写入buf 返回读取的字节数和可能遇到的任何错误 文件终止标志是读取0个字节且返回值err为io.EOF。
		if err != nil && err == io.EOF {
            fmt.Println("文件读取完毕")
            return
        }else if err != nil {
            fmt.Println("err:", err)
		}
		os.Stdout.Write(buf)
		fmt.Println("")
	}

}