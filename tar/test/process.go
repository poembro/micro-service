package main

import (
    "fmt"
    "os"
    "os/exec"
    "path/filepath"
    "time"
)

func main() {
    if len(os.Args) < 2 {
        fmt.Printf("Usage: %s [command]\n", os.Args[0])
        os.Exit(1)
    }

    cmdName := os.Args[1]
    if filepath.Base(os.Args[1]) == os.Args[1] {
        if lp, err := exec.LookPath(os.Args[1]); err != nil {
            fmt.Println("look path error:", err)
            os.Exit(1)
        } else {
            cmdName = lp
        }
    }

    procAttr := &os.ProcAttr{
		//前三个分别为，标准输入、标准输出、标准错误输出
		Files: []*os.File{os.Stdin, os.Stdout, os.Stderr},
		//新进程的环境变量
        Env: os.Environ(),
    }

    cwd, err := os.Getwd()
    if err != nil {
        fmt.Println("look path error:", err)
        os.Exit(1)
    }

	start := time.Now()
	//p, err := os.StartProcess("C:\\Windows\\System32\\notepad.exe", []string{"C:\\Windows\\System32\\notepad.exe", "D:\\1.txt"}, attr);
    process, err := os.StartProcess(cmdName, []string{cwd}, procAttr)
    if err != nil {
        fmt.Println("start process error:", err)
        os.Exit(2)
    }

    processState, err := process.Wait()
    if err != nil {
        fmt.Println("wait error:", err)
        os.Exit(3)
    }

    fmt.Println()
    fmt.Println("real", time.Now().Sub(start))
    fmt.Println("user", processState.UserTime())
    fmt.Println("system", processState.SystemTime())
}
//go run process.go "C:\\Windows\\System32\\notepad.exe" "D:\\1.txt"