package main

import (
	"context"
	"sync"
	"errors"
)

func Rpc(ctx context.Context, url string) error {
	result := make(chan int)
	err := make(chan error)

	go func() {
		// 进行RPC调用，并且返回是否成功，成功通过result传递成功信息，错误通过error传递错误信息
		isSuccess := true
		if isSuccess {
			result <- 1
		} else {
			err <- errors.New("some error happen")
		}
	}()

	select {
		case <- ctx.Done(): //处理这个听声器结束信号的逻辑
			// 其他RPC调用调用失败
			return ctx.Err()
		case e := <- err:
			// 本RPC调用失败，返回错误信息
			return e
		case <- result:
			// 本RPC调用成功，不返回错误信息
			return nil
	}
}

//场景一：RPC调用 在主goroutine上有4个RPC，RPC2/3/4是并行请求的，我们这里希望在RPC2请求失败之后，直接返回错误，并且让RPC3/4停止继续计算。这个时候，就使用的到Context。
//换而言之，如果你希望你实现的包是“可中止/可控制”的，那么你在你包实现的函数里面，最好是能接收一个Context函数，并且处理了Context.Done。


func main() {
	//返回了一个听声器（ctx）和话筒（cancel函数）。 goroutine 都拿着这个听声器（ctx）
	ctx, cancel := context.WithCancel(context.Background())

	// RPC1调用
	err := Rpc(ctx, "http://rpc_1_url")
	if err != nil {
		return
	}

	wg := sync.WaitGroup{}

	// RPC2调用
	wg.Add(1)
	go func(){
		defer wg.Done()
		err := Rpc(ctx, "http://rpc_2_url")
		if err != nil {
			cancel()
		}
	}()

	// RPC3调用
	wg.Add(1)
	go func(){
		defer wg.Done()
		err := Rpc(ctx, "http://rpc_3_url")
		if err != nil {
			cancel()
		}
	}()

	// RPC4调用
	wg.Add(1)
	go func(){
		defer wg.Done()
		err := Rpc(ctx, "http://rpc_4_url")
		if err != nil {
			cancel()
		}
	}()

//有人可能会担心我们这里的cancel()会被多次调用，context包的cancel调用是幂等的。可以放心多次调用。


	wg.Wait()
}
