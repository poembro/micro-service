package main

import (
	"fmt"
	"reflect"
)

func reflectTest(b interface{}){
	rTtyp := reflect.TypeOf(b)
	fmt.Println("rTtyp:", rTtyp) // rTtyp: int

	//反射 获取到 reflect.Value 
	rval := reflect.ValueOf(b)  //rval: 2  不是真正意义的 int  由 结构体下的 String方法 返回的
    
	fmt.Printf("rval: %v , %v ,  %T \n",rval, rval.Kind(), rval)

	//对不是否指针类型
    if rval.Kind().String() == "prt" {
		rval.Elem().SetInt(20) //Elem等同于 指针变量前加*号 取值
	}
}


func main(){
	var i int = 2
	reflectTest(&i)
	fmt.Println(i)
	
	str := "abcde"
	s := []byte(str)
	fmt.Println(s)
	
	s[2] = 'f'
	str = string(s)
	fmt.Println(str)
}