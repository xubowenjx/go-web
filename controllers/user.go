package controllers

import (
	"encoding/json"
	"fmt"
	modules "web/models"

	"github.com/astaxie/beego"
)

type UserController struct {
	beego.Controller
}

func (this *UserController) Get() {
	this.Data["userName"] = "hello"
	this.TplName = "user/index.tpl"
}
func (this *UserController) Post() {
	//实例化一个map
	var us = map[string]string{"name": "xubowen"}
	//实力化一个结构体
	resp := modules.Response{200, "ok", us}
	//转json
	b, err := json.Marshal(resp)
	if err != nil {
		fmt.Println(err)
	} else {
		//返回
		this.Ctx.WriteString(string(b))
	}
}
