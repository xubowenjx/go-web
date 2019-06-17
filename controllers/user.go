package controllers

import (
	"github.com/astaxie/beego"
)

type UserController struct {
	beego.Controller
}

func (this *UserController) Get() {
	this.Data["userName"] = "hello"
	this.TplName = "user/index.tpl"
}
