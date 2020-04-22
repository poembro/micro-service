package main

import (
    "fmt"
)

type Node struct { 
    data int
    left *Node
    right *Node
}

type Tree struct{
    root *Node
}

func create(tree *Tree, val int) {
    item := new(Node)
    item.data = val
    //fmt.Printf(" %T  %v \r\n", item, item)

    if tree.root == nil {
        tree.root = item
    } else {
        var tmp *Node
        tmp = tree.root
        for tmp != nil {
            if val < tmp.data { //处理左边
                if tmp.left == nil {
                    tmp.left = item  //左子节点没有使用 直接赋值过去
                    return 
                } else {
                    tmp = tmp.left
                }
            } else {
                if tmp.right == nil { 
                    tmp.right = item
                    return
                } else {
                    tmp = tmp.right
                }
            }
        }
    }
}

func in (item *Node) {
    if (item != nil) {
        in(item.left)
        fmt.Println(item.data)
        in(item.right)
    }
}

func main() {
    tree := new(Tree)
    if tree.root == nil {
        fmt.Printf(" 222 %T  %v \r\n", tree, tree)
    }

    arr := []int{6,3,8,2,5,1,7}
    for _, v := range(arr) {
        create(tree, v) 
    }

    in(tree.root)
}
 