package routers

import (
	"web/controllers"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/user/?:id", &controllers.UserController{})
	beego.Router("/file/:fileName", &controllers.FileOptDownloadController{})
	beego.Router("/upload", &controllers.FileOptUploadController{})

}
