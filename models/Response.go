package modules

/*
公有结构体的名字和属性的名字都要首字母大些
*/
type Response struct {
	RtnCode int
	RtnMsg  string
	RtnData map[string]string
}
