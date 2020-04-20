// Code generated by protoc-gen-micro. DO NOT EDIT.
// source: proto/post/post.proto

package go_micro_srv_post

import (
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	math "math"
)

import (
	context "context"
	client "github.com/micro/go-micro/v2/client"
	server "github.com/micro/go-micro/v2/server"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ client.Option
var _ server.Option

// Client API for Post service

type PostService interface {
	QueryUserPosts(ctx context.Context, in *Request, opts ...client.CallOption) (*Response, error)
}

type postService struct {
	c    client.Client
	name string
}

func NewPostService(name string, c client.Client) PostService {
	return &postService{
		c:    c,
		name: name,
	}
}

func (c *postService) QueryUserPosts(ctx context.Context, in *Request, opts ...client.CallOption) (*Response, error) {
	req := c.c.NewRequest(c.name, "Post.QueryUserPosts", in)
	out := new(Response)
	err := c.c.Call(ctx, req, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// Server API for Post service

type PostHandler interface {
	QueryUserPosts(context.Context, *Request, *Response) error
}

func RegisterPostHandler(s server.Server, hdlr PostHandler, opts ...server.HandlerOption) error {
	type post interface {
		QueryUserPosts(ctx context.Context, in *Request, out *Response) error
	}
	type Post struct {
		post
	}
	h := &postHandler{hdlr}
	return s.Handle(s.NewHandler(&Post{h}, opts...))
}

type postHandler struct {
	PostHandler
}

func (h *postHandler) QueryUserPosts(ctx context.Context, in *Request, out *Response) error {
	return h.PostHandler.QueryUserPosts(ctx, in, out)
}
