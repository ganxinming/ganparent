<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    #e02{
        border: 1px solid #000000;
        height: 200px;
        width: 200px;
    }

</style>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript">
    $(function(){
        /**
         * 每点一次按顺序执行
         */
        $("#e01").toggle(function(){
            alert("报数：1");
        }, function(){
            alert("报数：2");
        });
        /**
         * 鼠标移入，移除，触发函数
         */
        $("#e02").hover(function(){
            $("#divMsg").html("over");
        } , function(){
            $("#divMsg").html("out");
        });
        $("#test").click(function () {
           alert("123");
        });

    });
</script>
<body>
<input id="e01" type="button" value="点我呀 " /><span id="textMsg"></span> <br/>
<hr/>
<div id="e02" ></div><span id="divMsg"></span> <br/>
<button id="test">an</button>
</body>
</html>