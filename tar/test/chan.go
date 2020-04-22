package main

import (
	"fmt"
	"sync"
)

func main(){
    wg := &sync.WaitGroup{}

	wg.Add(2)
	var c1 = make(chan int, 100)
	go func(){
	   defer wg.Done()
       for i :=0; i<100; i++{
		   c1 <- i
	   } 
	}()

	go func(){
		defer wg.Done()
		/*
		for {
			i, ok := <-c1
			if i == 59 || !ok {
                break
			}
			fmt.Println( i)
		}*/
		
		select {
			case  i := <- c1: 
			    if i >= 99 {
					return 
				}
			default: 
			fmt.Println("default go...")
		}
	}()

	wg.Wait()
	close(c1)




	fmt.Println(1)
}


