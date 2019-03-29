<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/jquery.serializeJSON/2.9.0/jquery.serializejson.js"></script>
<script type="text/javascript">
    $(function () {
        $("#ll").click(function () {
            var jsonObj={"id":11,"username":"Ajax的load"};
            var url="/json/getAjaxGet";
            $(this).load(url,jsonObj,function (data) {

            });
        });

        $("#gg").click(function () {
           var jsonObj={"id":11,"username":"Ajax的Get"};
           var url="/json/getAjaxGet";
           $.get(url,jsonObj,function (data) {
               alert(data.message);
           });

        });

        $("#ss").click(function () {
            var user={
                "id" : 11,
                "username": "Ajax的Post"
            };
            $.post("/json/getAjaxPost",user,function (data) {
                alert(data.username);
            },"json");

        }) ;
        //可以跨域请求json，即jsonp
        //但是这里有点小问题，用到时在用
        $("#oo").click(function () {
            $.getJSON("http://www.weather.com.cn/adat/sk/101110101.html",
                function (result) {
                   $("#im").attr("src",result.img_url);
                }
            );
        });

        $("#bb").click(function () {
            var jsonObj=JSON.stringify({
                "id" : 11,
                "username": "甘甘",
                "hobby" : ["篮球","足球"]
            });
            $.ajax({
                type:'POST',
                url: '/json/testJson.do',
                data:jsonObj,
                contentType:'application/json;charset=utf-8',
                dataType:"json",
                success:function (data) {
                    alert(data.username);
                },
                error: function (data) {
                    alert(data.id);
                }
            });
        });

        //表单序列化，改成JSON形式
      /**  $("[type='submit']").click(function () {
            $.ajax({
                type:'post',
                url: '/json/testJson',
                data:JSON.stringify($("#formid").serializeJSON()),
                contentType:'application/json;charset=utf-8',
                dataType:"json",
                success:function (data) {
                    alert(data.username);
                },
                error: function (data) {
                    alert(data.id);
                }
            });
        });
       */
      //表单序列化，普通形式
      $("[type='submit']").click(function () {
          $.ajax({
              type:'post',
              url: '/json/getAjaxPost',
              data:$("#formid").serialize(),
              dataType:"json",
              success:function (data) {
                  alert(data.username);
              },
              error: function (data) {
                  alert(data.id);
              }
          });
      });
        /*$("[type='submit']").click(function () {
            alert($("#formid"));
            alert("序列化"+$("#formid").serialize());
            alert("json数组"+$("#formid").serializeArray());
            alert("json"+$("#formid").serializeJSON());
        });*/
    });
</script>
<body>
<button id="ll">Ajax的load方法</button>
<button id="gg">Ajax的get方法</button>
<button id="ss">Ajax的post方法</button>
<button id="oo">Ajax的getJson方法</button>
<button id="bb">Ajax的原始方法</button>
<form name="form1" action="" id="formid" >
    id:<input type="text" name="id" formmethod="post">
    username:<input type="text" name="username">
    hobby: 篮球<input type="checkbox" name="hobby" value="篮球" checked="checked">
    足球<input type="checkbox" name="hobby" value="足球">
    乒乓球<input type="checkbox" name="hobby" value="乒乓球">
    <input type="submit" >
</form>
<img id="i" src=""/>
</body>
</html>