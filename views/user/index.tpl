<html>
  <head>
    <script src="/static/js/vue.min.js"></script>
    <!--  <link
      rel="stylesheet"
      href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css"
    />
    <link rel="stylesheet" href="https://unpkg.com/muse-ui/dist/muse-ui.css" />
    <script src="https://unpkg.com/muse-ui/dist/muse-ui.js"></script> -->
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
        <button @click="click('post')" color="secondary">测试post</button>
        <mu-button @click="click('delete')" color="secondary"
          >测试delete</mu-button
        >
      </div>
    </div>
  </body>
  <script>
    new Vue({
      el: "#app",
      data() {
        return {
          name: "xxxx"
        };
      },
      methods: {
        click(type) {
          http("/user/110", type, {
            content: "留言内容"
          }).then((data) => {
            console.log(data);
          });
        }
      }
    });
  </script>
</html>
