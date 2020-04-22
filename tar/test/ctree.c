#include <stdio.h>
#include <stdlib.h>

typedef struct node{
    int data;
    struct node* left;
    struct node* right; 
}Node;

typedef struct{
    Node* root;
}Tree;

void insert(Tree* tree, int value) {
    //创建新节点
    Node* item = malloc(sizeof(Node));
    item->data = value;
    item->left = NULL;
    item->right = NULL;
 
    if (tree->root == NULL) { 
        tree->root = item; //如果根节点是空的 它就是根
    } else {
        Node * tmp = tree->root; //当前比较的节点
        while (tmp != NULL) {
            if (tmp->data > value) { //新值与根的值对比 
              //比根小  并且还为null 没有被其他节点占用时
              if (tmp->left == NULL) {
                  tmp->left = item;
                  return ;
              }else {  //比根小  并且被其他节点占用 
                  tmp = tmp->left; 
              }
            }else{
              if (tmp->right == NULL) {
                  tmp->right = item;
                  return ;
              } else {
                  tmp = tmp->right; 
              }
            }
        }
    }
}

void pre(Node* item) {
    if (item != NULL) {
        printf("%d \r\n", item->data);
        pre(item->left); //先打印左 
        pre(item->right);//再打印最侧第一个右
    }
}

void in(Node* item) {
    if (item != NULL) { 
        in(item->left);
        printf("%d \r\n", item->data);
        in(item->right);
    }
}

void post(Node* item) {
    if (item != NULL) { 
        post(item->right );
        post(item->left);
        printf("%d \r\n", item->data);
    }
}

int height(Node* item) {
    if (item == NULL) {
        return 0;
    }else {
        int left_h = height(item->left);
        int right_h = height(item->right);
        int max = 0;
        max = left_h > right_h ? left_h : right_h;
        return max + 1;
    }
}

int main(){
    int arr[7] = {6,3,8,2,5,1,7};
    Tree tree;
    tree.root = NULL;

    int i;
    for (i = 0; i < 7; i++) {
        insert(&tree, arr[i]);
    }

    printf("------前------%d \r\n", 1);
    pre(tree.root);
    printf("------中------%d \r\n", 2);
    in(tree.root);
    printf("------后------%d \r\n", 3);
    post(tree.root);
    printf("------高------%d \r\n", height(tree.root));
}