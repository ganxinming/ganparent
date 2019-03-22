<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button id="ss">提交json数据</button>
<button id="bb">提交json数据</button>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.form.js"></script>
<script>
    $(function () {
       $("#ss").click(function () {
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
               success:function (data) {
                   alert(data.username);
               }
           });
       }) ;

        $("#bb").click(function () {
            var jsonObj=JSON.stringify({
                "id" : 11,
                "username": "甘甘",
                "hobby" : ["篮球","足球"]
            });
            $.ajax({
                type:'POST',
                url: '/json/testJson1',
                data:jsonObj,
                contentType:'application/json;charset=utf-8',
                success:function (data) {

                }
            });
        }) ;
    });
</script>
</html>