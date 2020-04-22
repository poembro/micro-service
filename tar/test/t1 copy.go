package main

import (
	"context"
	"sync"
	"errors"
	"time"
)


//在http的客户端里面加上timeout也是一个常见的办法 
uri := "https://httpbin.org/delay/3"
req, err := http.NewRequest("GET", uri, nil)
if err != nil {
	log.Fatalf("http.NewRequest() failed with '%s'\n", err)
}

ctx, _ := context.WithTimeout(context.Background(), time.Millisecond*100)
req = req.WithContext(ctx)

resp, err := http.DefaultClient.Do(req)
if err != nil {
	log.Fatalf("http.DefaultClient.Do() failed with:\n'%s'\n", err)
}
defer resp.Body.Close()




//在http服务端设置一个timeout如何做呢？
func test(w http.ResponseWriter, r *http.Request) {
	time.Sleep(20 * time.Second)
	w.Write([]byte("test"))
}

func main() {
	http.HandleFunc("/", test)
	timeoutHandler := http.TimeoutHandler(http.DefaultServeMux, 5 * time.Second, "timeout")
	http.ListenAndServe(":8080", timeoutHandler)
}



func main() {
    ctx, cancel := context.WithTimeout(context.Background(), 50*time.Millisecond)
    defer cancel()

    select {
    case <-time.After(1 * time.Second):
        fmt.Println("overslept")
    case <-ctx.Done():
        fmt.Println(ctx.Err()) // prints "context deadline exceeded"
    }
}