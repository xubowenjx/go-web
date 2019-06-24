package modules

import (
	"encoding/json"
	"fmt"
)

type response struct {
	RtnCode int
	RtnMsg  string
	RtnData map[string]string
}

func Format(status int, message string, ret map[string]string) string {

	resp := response{status, message, ret}
	fmt.Println(resp)
	//转json
	b, err := json.Marshal(resp)
	if err != nil {
		fmt.Println(err)
		return ""
	} else {
		//返回
		return string(b)
	}
}
