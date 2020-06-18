package controllers

import (
	"fmt"
	modules "web/models"

	"github.com/astaxie/beego"
)

type UserController struct {
	beego.Controller
}

func (this *UserController) Get() {
	this.Data["UserName"] = "hello"
	this.TplName = "user/index.tpl"
}

func (this *UserController) Post() {
	id := this.Ctx.Input.Param(":id")
	fmt.Println("id", id)
	var us = map[string]string{"name": "xubowen"}
	this.Ctx.WriteString(modules.Format(200, "ok", us))

}
func (this *UserController) Delete() {
	var us = map[string]string{}
	this.Ctx.WriteString(modules.Format(200, "delete ok", us))
}
