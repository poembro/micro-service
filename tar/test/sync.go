package main
import (
    "fmt"
    "sync"
    "math/rand"
    "time"
)

func slices() {
    var arr [5]int = [...]int {1, 2, 3, 4, 5}
    var slice = arr[1:3]
    fmt.Println("arr=", arr)
    fmt.Println("slice=", slice)
    fmt.Println("slice len", len(slice))
    fmt.Println("slice cap", cap(slice))
}

func rands() {
    // 设置种子，不然每次都会随机成0
    rand.Seed(time.Now().UnixNano())

    // 生成 0 到 (n-1) 的随机数（输出 int类型）
    println(rand.Intn(10)) // 输出 0-9

    // 生成 0 到 (n-1) 的随机数（输出 int32类型）
    println(rand.Int31n(10)) // 输出 0-9

    // 生成 0 到 (n-1) 的随机数（输出 int64类型）
    println(rand.Int63n(10)) // 输出 0-9
}

func main() {
    m := make(map[int]int)
    wg := &sync.WaitGroup{} //控制协程 何时执行完
    mu := &sync.Mutex{}

    N := 3
    wg.Add(N)
    for i := 0; i < N; i++ {
        go func(i int) {
            defer wg.Done()
            mu.Lock()
            m[i] = i
            mu.Unlock()
        }(i)
    }
    wg.Wait()
    fmt.Println(len(m))

    rands()
}