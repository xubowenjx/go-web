<html>
  <head>
    <script src="https://unpkg.com/vue@2.6.10/dist/vue.js"></script>
    <link
      rel="stylesheet"
      href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css"
    />
    <link rel="stylesheet" href="https://unpkg.com/muse-ui/dist/muse-ui.css" />
    <script src="https://unpkg.com/muse-ui/dist/muse-ui.js"></script>
    <script src="/static/js/http.js"></script>
    <title>user</title>
  </head>
  <body>
    <div id="app">
      <mu-appbar style="width: 100%;" color="primary">
        <mu-button icon slot="left">
          <mu-icon value="menu"></mu-icon>
        </mu-button>
        Title
        <mu-button flat slot="right">LOGIN</mu-button>
      </mu-appbar>
      <div>
        <mu-button href="/" color="primary">回到首页</mu-button>
        <mu-button @click="click" color="secondary">测试post</mu-button>
      </div>
    </div>
  </body>
  <script>
    new Vue({
      el: "#app",
      methods: {
        click() {
          http("/user", {
            method: "post"
          }).then(data => {
            console.log(data);
          });
        }
      }
    });
  </script>
</html>
