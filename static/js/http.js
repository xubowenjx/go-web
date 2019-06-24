function http(url, method, params, option) {
  return new Promise((resolve, reject) => {
    let options = {
      method,
      ...option //开放原始配置
    };
    if (method === "post") {
      // 对post单独处理
      options.body = JSON.stringify(params);
    } else {
      let paramsArray = [];
      //拼接参数
      Object.keys(params).forEach(key =>
        paramsArray.push(key + "=" + params[key])
      );
      if (url.search(/\?/) === -1) {
        url += "?" + paramsArray.join("&");
      } else {
        url += "&" + paramsArray.join("&");
      }
    }
    fetch(url, options)
      .then(response => {
        return response.json();
      })
      .then(data => {
        resolve(data);
      })
      .catch(err => {
        reject(err);
      });
  });
}
