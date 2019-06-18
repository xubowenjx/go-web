function http(url, options) {
  return new Promise((resolve, reject) => {
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
